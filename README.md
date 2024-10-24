# Population-Specific Evolutionary Hotspots in Human Genomes

## Project Overview
This project investigates evolutionary hotspots across diverse human populations using whole-genome sequencing data from the 1000 Genomes Project, the Simons Genome Diversity Project, and the T2T (Telomere-to-Telomere) genome assembly. The primary objective is to understand how environmental pressures have shaped genetic diversity by identifying both positive and negative selection signals across genomes.

## Objectives
- Identify population-specific evolutionary hotspots across different human populations.
- Detect selection signals using genome-wide selection metrics like Fst, iHS, XP-EHH, and Tajima's D.
- Analyze the variation in the newly completed T2T genome assembly.
- Correlate genomic selection signals with environmental and geographical factors.
- Functionally annotate identified hotspots and link them to nearby genes.

## Data Sources
The following datasets are used in this project:
- **1000 Genomes Project**: Genome-wide sequencing data for diverse human populations. (Website: https://www.internationalgenome.org/)
- **Simons Genome Diversity Project**: Genome data for populations underrepresented in other datasets. (Website: https://www.simonsfoundation.org/simons-genome-diversity-project/)
- **T2T Genome Assembly**: The fully completed human genome assembly. (GitHub: https://github.com/marbl/CHM13)

## Methodology
1. **Data Acquisition**: Download full genome VCF files from the 1000 Genomes Project and SGDP, as well as the T2T genome data.
2. **Data Preprocessing**: Perform quality control and filtering on VCF files, focusing on high-confidence variants across populations.
3. **Selection Analysis**: Detect selection signals using methods such as Fst, iHS, XP-EHH, and Tajima’s D.
4. **Environmental Data Integration**: Correlate genomic hotspots with environmental data from NASA SEDAC and the World Bank.
5. **Functional Annotation**: Annotate evolutionary hotspots using Ensembl and UCSC Genome Browser, and perform Gene Ontology analysis.

## Tools & Libraries
- **Python**: General data processing, functional annotation, and data visualization.
- **VCFtools**: For handling and filtering VCF files.
- **GATK**: Variant calling and quality filtering.
- **SNPRelate**: For selection signal analysis (iHS, XP-EHH).
- **adegenet**: Fst calculations and population differentiation analysis.
- **Matplotlib & Seaborn**: Data visualization.

## Project Structure
.
├── data/                          # Raw and processed VCF data  
│   ├── 1000Genomes/               # 1000 Genomes VCF files  
│   ├── SGDP/                      # Simons Genome Diversity VCF files  
│   └── T2TGenome/                 # T2T genome VCF files  
├── scripts/                       # Analysis scripts  
│   ├── data_preprocessing.py      # Preprocessing steps for filtering VCF files  
│   ├── selection_analysis.py      # Scripts for detecting selection signals  
│   └── functional_annotation.py   # Functional annotation and GO analysis  
├── results/                       # Generated results and figures  
└── README.md                      # Project overview and documentation  

## Getting Started

### Prerequisites
- Python 3.x
- VCFtools
- GATK
- SNPRelate
- adegenet
- Matplotlib & Seaborn

### Installation

Clone the repository:
git clone https://github.com/yourusername/pop-specific-evolutionary-hotspots.git

Install Python dependencies:
pip install -r requirements.txt

### Running the Project

1. Data Acquisition: Run the script to download and organize data:
   python scripts/data_acquisition.py

2. Data Preprocessing: Filter VCF files:
   python scripts/data_preprocessing.py

3. Selection Analysis: Detect selection signals:
   python scripts/selection_analysis.py

## Results
The results will be stored in the results/ directory and include:
- Selection signal plots (e.g., Fst, iHS, XP-EHH).
- Functional annotation reports.
- Correlations between environmental data and selection hotspots.

## Acknowledgments
- 1000 Genomes Project
- Simons Genome Diversity Project
- T2T Genome Assembly Team
- NASA SEDAC
- World Bank Open Data
