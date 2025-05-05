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
- **Max target sequences**: 100  
- **Organism**: все виды, **кроме Homo sapiens**
- **Expect threshold (E-value)**: 10  
- **Gap Costs**: Existence: 5, Extension: 2  
- **Match/Mismatch Scores**: 2, -3

---

## Гомологичные гены  
| Вид (лат.) | Gene Symbol | Ссылка на NCBI | Русское название |  
|------------|-------------|----------------|------------------|  
| *Gorilla gorilla gorilla* | SRY | [XM_055377235.2](https://www.ncbi.nlm.nih.gov/nuccore/XM_055377235.2) | Западная горилла |  
| *Pan troglodytes* | SRY | [AC146189.3](https://www.ncbi.nlm.nih.gov/nuccore/AC146189.3) | Шимпанзе обыкновенный |  
| *Pan paniscus* | SRY | [DQ977198.1](https://www.ncbi.nlm.nih.gov/nuccore/DQ977198.1) | Бонобо (карликовый шимпанзе) |  
| *Pongo abelii* | SRY | [XM_054545385.2](https://www.ncbi.nlm.nih.gov/nuccore/XM_054545385.2) | Суматранский орангутан |  
| *Symphalangus syndactylus* | SRY | [XM_055269661.1](https://www.ncbi.nlm.nih.gov/nuccore/XM_055269661.1) | Сиаманги |  
| *Pongo pygmaeus* | SRY | [XM_063660953.1](https://www.ncbi.nlm.nih.gov/nuccore/XM_063660953.1) | Борнейский орангутан |  
| *Hylobates moloch* | SRY | [XM_032756524.2](https://www.ncbi.nlm.nih.gov/nuccore/XM_032756524.2) | Голубой гиббон |  
| *Rhinopithecus roxellana* | SRY | [XM_010369191.2](https://www.ncbi.nlm.nih.gov/nuccore/XM_010369191.2) | Золотая курносая обезьяна |  
| *Macaca nemestrina* | LOC139360957 | [XM_071089432.1](https://www.ncbi.nlm.nih.gov/nuccore/XM_071089432.1) | Макак свинохвостый |  
| *Trachypithecus francoisi* | SRY | [XM_033212289.1](https://www.ncbi.nlm.nih.gov/nuccore/XM_033212289.1) | Франсуа-лангур |

---

## Множественное выравнивание  
Множественное выравнивание выполнено с помощью [Clustal Omega (EMBL-EBI)](https://www.ebi.ac.uk/Tools/msa/clustalo/).  
**Файл выравнивания в формате Clustal**: [ссылка или вставить файл.clustal](#)

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