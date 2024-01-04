#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno08
#SBATCH -o result-blast-txt
# Cargamos el módulo de Singularity
module load singularity/
# Ejecutamos la imagen de BLAST
singularity exec blast_2.9.0--pl526h3066fca_4.sif gzip -d zebrafish.1.protein.faa.gz && makeblastdb -in zebrafish.1.protein.faa -dbtype prot && blastp -query P04156.fasta -db zebrafish.1.protein.faa 

