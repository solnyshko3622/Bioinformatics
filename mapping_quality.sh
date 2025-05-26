#!/bin/bash

# Определяем имена файлов
REFERENCE="GCF_000005845.2_ASM584v2_genomic.fna"
READ1="SRR33692908_1.fastq"
READ2="SRR33692908_2.fastq"
OUT_SAM="aligned.sam"
OUT_BAM="aligned.bam"
SORTED_BAM="aligned_sorted.bam"
FLAGSTAT="flagstat.txt"

# 1. Индексация референсного генома 
if [ ! -f "${REFERENCE}.bwt" ]; then
    echo "Indexing reference genome..."
    bwa index $REFERENCE || { echo "Indexing failed!"; exit 1; }
fi

# 2. Выравнивание ридов
echo "Aligning reads..."
bwa mem $REFERENCE $READ1 $READ2 > $OUT_SAM || { echo "Alignment failed!"; exit 1; }

# 3. Конвертация SAM в BAM
echo "Converting SAM to BAM..."
samtools view -Sb $OUT_SAM > $OUT_BAM || { echo "SAM to BAM conversion failed!"; exit 1; }

# 4. Сортировка BAM файла
echo "Sorting BAM file..."
samtools sort $OUT_BAM -o $SORTED_BAM || { echo "BAM sorting failed!"; exit 1; }

# 5. Индексация отсортированного BAM
echo "Indexing sorted BAM..."
samtools index $SORTED_BAM || { echo "BAM indexing failed!"; exit 1; }

# 6. Статистика по выравниванию
echo "Generating alignment statistics..."
samtools flagstat $SORTED_BAM > $FLAGSTAT || { echo "Flagstat failed!"; exit 1; }

# 7. Анализ процента выравнивания
total_reads=$(grep "in total" $FLAGSTAT | awk '{print $1}')
mapped_reads=$(grep "mapped (" $FLAGSTAT | awk '{print $1}')

percentage_mapped=$(echo "scale=2; $mapped_reads/$total_reads*100" | bc)

echo -e "\nResults:"
echo "Total reads: $total_reads"
echo "Mapped reads: $mapped_reads"
echo "Percentage mapped: $percentage_mapped%"

if (( $(echo "$percentage_mapped > 90" | bc -l) )); then
    echo "Status: OK - Mapping quality is good"
else
    echo "Status: Not OK - Mapping quality is low"
fi