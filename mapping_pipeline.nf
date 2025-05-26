// mapping_pipeline.nf

params.reads1 = "/Users/maryayukhnina/study/Bioinformatics/SRR33692908_1.fastq"
params.reads2 = "/Users/maryayukhnina/study/Bioinformatics/SRR33692908_2.fastq"
params.reference = "/Users/maryayukhnina/study/Bioinformatics/GCA_000005845.2_ASM584v2_genomic.fna"

process index_reference {
    input:
    path reference
    
    output:
    path "${reference}.*", emit: indexed_ref
    
    script:
    """
    bwa index $reference
    """
}

process align_reads {
    input:
    path reads1
    path reads2
    path reference
    path reference_indexes
    
    output:
    path "aligned.sam", emit: sam
    
    script:
    """
    bwa mem $reference $reads1 $reads2 > aligned.sam
    """
}

process convert_to_bam {
    input:
    path sam_file
    
    output:
    path "aligned.bam", emit: bam
    
    script:
    """
    samtools view -Sb $sam_file > aligned.bam
    """
}

process sort_bam {
    input:
    path bam_file
    
    output:
    path "aligned_sorted.bam", emit: sorted_bam
    
    script:
    """
    samtools sort $bam_file -o aligned_sorted.bam
    """
}

process generate_stats {
    input:
    path sorted_bam
    
    output:
    path "flagstat.txt", emit: stats
    
    script:
    """
    samtools flagstat $sorted_bam > flagstat.txt
    """
}

workflow {
    // Запуск пайплайна
    index_reference(params.reference)
    align_reads(params.reads1, params.reads2, params.reference, index_reference.out.indexed_ref)
    convert_to_bam(align_reads.out.sam)
    sort_bam(convert_to_bam.out.bam)
    generate_stats(sort_bam.out.sorted_bam)
    
    // Вывод результатов
    generate_stats.out.stats.view { "Результаты анализа:\n${it.text}" }
}