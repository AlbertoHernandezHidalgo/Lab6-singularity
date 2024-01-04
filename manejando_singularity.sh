#!/bin/bash
#Cargamos el módulo singularity
module load singularity
# Comando hostname

echo "Hostname en ibsen:"
hostname
echo "Hostname en my-python.sif:"
singularity exec ./singularity/my-python.sif hostname

# Comando cat /etc/os-release

echo "cat /etc/os-release en ibsen:"
cat /etc/os-release
echo "Comando cat /etc/os-release en my-python.sif:"
singularity exec ./singularity/my-python.sif cat /etc/os-release

# Comando pwd

echo "pwd en ibsen:"
pwd
echo "pwd en my-python.sif:"
singularity exec ./singularity/my-python.sif pwd

# Comando ls -l /home

echo "ls -l /home en ibsen:"
ls -l /home
echo "ls -l /home en my-python.sif:"
singularity exec ./singularity/my-python.sif ls -l /home

# Comando python --version

echo "python --version en ibsen:"
python --version
echo "python --version en my-python.sif:"
singularity exec ./singularity/my-python.sif ipython --version

# Notebook pi.ipynb con un tamaño de 10**5

echo "Notebook pi.ipynb con un tamaño de 10**5 en source con singularity:"

singularity exec ./singularity/my-python.sif ipython ./source/pi.ipynb 10**5



# Notebook pi.ipynb en el contenedor my-python.sif
echo "Ejecución notebook pi.ipynb que está en el contenedor my-python.sif de Singularity"
singularity exec ./singularity/my-python.sif jupyter notebook /app/pi.ipynb
