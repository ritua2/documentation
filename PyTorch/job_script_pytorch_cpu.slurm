#!/bin/bash
#SBATCH -J program_name
#SBATCH -o program_name.txt
#SBATCH -p compute1
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --time=01:00:00

source mypython/bin/activate

python3 pytorch_cpu.py
