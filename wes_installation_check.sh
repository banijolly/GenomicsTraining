printf "CONDA VERSION\t";
conda -V
printf "FASTQC VERSION\t";
fastqc -v
printf "TRIMMOMATIC VERSION\t";
trimmomatic -version
printf "BWA VERSION\t";
bwa-mem2 version 2>&1 | grep -oP '\d+\.\d+\.\d+'
printf "SAMTOOLS VERSION\t";
samtools --version | head -n 1 | awk '{print $2}'
printf "BEDTOOLS VERSION\t";
bedtools -version |  awk '{print $2}'
printf "PICARD VERSION\t";
java -jar picard.jar  MarkDuplicates --version 
printf "GATK VERSION\t";
java -jar gatk-4.4.0.0/gatk-package-4.4.0.0-local.jar --version | head -n 1 | awk '{print $6}'
