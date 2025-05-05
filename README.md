# Задание 2

## Ген  
Я выбрала ген [**SRY (sex determining region Y)** – Homo sapiens (human)](https://www.ncbi.nlm.nih.gov/gene/6736).  
Этот ген кодирует транскрипционный фактор, запускающий развитие мужского пола у млекопитающих. Он активирует каскад генов, ведущий к формированию яичек.  

[**Последовательность в формате FASTA**](#) *(вставить ссылку или файл)*

---

## Параметры BLAST  
Для поиска гомологичных генов использовалась программа **NCBI BLASTn** с настройками:  
- **Database**: Nucleotide collection (nr/nt)  
- **Program selection**: Megablast (highly similar sequences)  
- **Organism**: все виды, **кроме Homo sapiens**

---

## Гомологичные гены  
| Вид (лат.) | Gene Symbol | Ссылка на NCBI | Русское название | Файл | 
|------------|-------------|----------------|------------------|------| 
| *Gorilla gorilla gorilla* | SRY | [XM_055377235.2](https://www.ncbi.nlm.nih.gov/nuccore/XM_055377235.2) | Западная горилла | https://github.com/solnyshko3622/Bioinformatics/blob/task2/SRY-gorilla.fna |  
| *Pan troglodytes* | SRY | [AC146189.3](https://www.ncbi.nlm.nih.gov/nuccore/AC146189.3) | Шимпанзе обыкновенный |  https://github.com/solnyshko3622/Bioinformatics/blob/task2/SRY-panTroglodytes |
| *Pan paniscus* | SRY | [DQ977198.1](https://www.ncbi.nlm.nih.gov/nuccore/DQ977198.1) | Бонобо (карликовый шимпанзе) |  https://github.com/solnyshko3622/Bioinformatics/blob/task2/SRY_panPanasicus.fna |
| *Pongo abelii* | SRY | [XM_054545385.2](https://www.ncbi.nlm.nih.gov/nuccore/XM_054545385.2) | Суматранский орангутан |  https://github.com/solnyshko3622/Bioinformatics/blob/task2/SRY-pongoAbelii.fna |
| *Symphalangus syndactylus* | SRY | [XM_055269661.1](https://www.ncbi.nlm.nih.gov/nuccore/XM_055269661.1) | Сиаманги |  https://github.com/solnyshko3622/Bioinformatics/blob/task2/SRY-SymphalangusSyndactylus.fna |
| *Pongo pygmaeus* | SRY | [XM_063660953.1](https://www.ncbi.nlm.nih.gov/nuccore/XM_063660953.1) | Борнейский орангутан |  https://github.com/solnyshko3622/Bioinformatics/blob/task2/SRY-pongoPygmaeus.fna |
| *Hylobates moloch* | SRY | [XM_032756524.2](https://www.ncbi.nlm.nih.gov/nuccore/XM_032756524.2) | Голубой гиббон |  https://github.com/solnyshko3622/Bioinformatics/blob/task2/SRY-hylobatesMoloch.fna |
| *Rhinopithecus roxellana* | SRY | [XM_010369191.2](https://www.ncbi.nlm.nih.gov/nuccore/XM_010369191.2) | Золотая курносая обезьяна | https://github.com/solnyshko3622/Bioinformatics/blob/task2/SRY-RhinopithecusRoxellana.fna |  
| *Macaca nemestrina* | LOC139360957 | [XM_071089432.1](https://www.ncbi.nlm.nih.gov/nuccore/XM_071089432.1) | Макак свинохвостый |  https://github.com/solnyshko3622/Bioinformatics/blob/task2/Macaca%20nemestrina.fna |
| *Trachypithecus francoisi* | SRY | [XM_033212289.1](https://www.ncbi.nlm.nih.gov/nuccore/XM_033212289.1) | Франсуа-лангур | https://github.com/solnyshko3622/Bioinformatics/blob/task2/SRY-TrachypithecusFrancoisi.fna |

---

## Множественное выравнивание  
Множественное выравнивание выполнено с помощью [Clustal Omega (EMBL-EBI)](https://www.ebi.ac.uk/Tools/msa/clustalo/).  
**Файл выравнивания в формате Clustal**: [файл](https://github.com/solnyshko3622/Bioinformatics/blob/task2/clustalo-I20250505-082755-0261-57852219-p1m.aln-clustal_num)

---

## Консервативные участки
В результате множественного выравнивания гена **SRY** были выявлены около 15 консервативных участков(968-1026 строки). Это указывает на высокую важность этой области. В других частях последовательности наблюдаются менее консервативные участки, что может отражать эволюционные изменения и различия в регуляции гена у разных видов.


---

## Таксономический анализ  
Таксономические иерархии:

Animalia Chordata Mammalia Primates Hominidae Gorilla Gorilla gorilla
Animalia Chordata Mammalia Primates Hominidae Pan
Animalia Chordata Mammalia Primates Hominidae Pan
Animalia Chordata Mammalia Primates Hominidae Pongo
Animalia Chordata Mammalia Primates Hylobatidae Symphalangus
Animalia Chordata Mammalia Primates Hominidae Pongo
Animalia Chordata Mammalia Primates Hylobatidae Hylobates
Animalia Chordata Mammalia Primates Cercopithecidae Rhinopithecus
Animalia Chordata Mammalia Primates Cercopithecidae Macaca
Animalia Chordata Mammalia Primates Cercopithecidae Trachypithecus

Наименьший таксон, объединяющий все найденные виды:
- **Латинское название**: *Primates*  
- **Русское название**: Приматы  

### Краткое описание:  
Приматы — отряд млекопитающих, к которому относятся человек, обезьяны и полуобезьяны. Они обладают высокоразвитым мозгом, хорошим зрением, хватательными конечностями и сложным социальным поведением. Отряд включает более 500 видов, обитающих преимущественно в тропических регионах.

---
