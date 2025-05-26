# Задание 3

## Полученные результаты

### 1. Исходные данные

- **Ссылка на данные из NCBI SRA**: [SRR33692908](https://www.ncbi.nlm.nih.gov/sra/SRR33692908)
- **Референсный геном**: GCF_000005845.2_ASM584v2 (E.coli)

### 2. Основные скрипты

- [mapping_quality.sh](mapping_quality.sh) - bash-скрипт анализа качества картирования
- [mapping_pipeline.nf](mapping_pipeline.nf) - Nextflow пайплайн анализа
- [hello.nf](hello.nf) - тестовый пайплайн "Hello World"

### 3. Результаты анализа

- [flagstat.txt](flagstat.txt) - результаты samtools flagstat
- [report.html](report.html) - отчёт Nextflow
- [dag.dot](dag.dot) - граф выполнения пайплайна

### 4. Вспомогательные файлы

- [README.md](README.md) - инструкции по установке и запуску
- Лог-файлы выполнения (в директории work/)

## Инструкция по установке Nextflow

```bash
# Установка Java (требуется для Nextflow)
sudo apt update
sudo apt install openjdk-11-jdk

# Установка Nextflow
curl -s https://get.nextflow.io | bash
sudo mv nextflow /usr/local/bin/

# Проверка установки
nextflow -version
```

## Результаты выполнения пайплайна

### Статистика картирования (flagstat.txt)

4220192 + 0 in total (QC-passed reads + QC-failed reads)
0 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
4219992 + 0 mapped (99.99% : N/A)
4220192 + 0 paired in sequencing
2110096 + 0 read1
2110096 + 0 read2
4219992 + 0 properly paired (100.00% : N/A)
4219992 + 0 with itself and mate mapped
0 + 0 singletons (0.00% : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)

### Вывод пайплайна Nextflow

```
1632635 + 0 in total (QC-passed reads + QC-failed reads)
1625512 + 0 primary
0 + 0 secondary
7123 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
1381685 + 0 mapped (84.63% : N/A)
1374562 + 0 primary mapped (84.56% : N/A)
1625512 + 0 paired in sequencing
812756 + 0 read1
812756 + 0 read2
1359134 + 0 properly paired (83.61% : N/A)
1366264 + 0 with itself and mate mapped
8298 + 0 singletons (0.51% : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)

```

## Визуализация пайплайна

Граф выполнения (DAG) пайплайна показывает:

1. Все процессы в виде прямоугольных узлов
2. Зависимости данных в виде стрелок
3. Чёткий порядок выполнения:
   - index_reference → align_reads → convert_to_bam → sort_bam → generate_stats

**Отличия от блок-схемы**:

1. DAG автоматически генерируется из кода пайплайна
2. Акцент на потоках данных, а не на логике алгоритма
3. Показывает потенциально параллельные задачи
4. Включает технические детали выполнения
