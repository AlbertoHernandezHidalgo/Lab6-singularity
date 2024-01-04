#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno08
#SBATCH -o result-blast-txt
# Cargamos el módulo de Singularity
module load singularity/
# Ejecutamos la imagen de BLAST
singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif gzip -d zebrafish.1.protein.faa.gz 
singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot 
singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -db zebrafish.1.protein.faa 

