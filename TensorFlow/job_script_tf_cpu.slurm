#!/bin/bash 
#SBATCH -J program_name
#SBATCH -o program_name.txt 
#SBATCH -p normal 
#SBATCH -N 1 
#SBATCH -n 1 
#SBATCH -t 00:10:00 
 
ml cuda/toolkit/11.3
ml cuda/cudnn/8.2.1.32

source mypython/bin/activate 

time python3 tf_cpu.py 
