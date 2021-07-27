#!/bin/bash
#SBATCH -J program_name
#SBATCH -o program_name.txt
#SBATCH -p gpu1v100
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --time=01:00:00

ml cuda/toolkit/11.3
ml cuda/cudnn/8.2.1.32
 
source mypython/bin/activate

python3 tf_gpu.py
