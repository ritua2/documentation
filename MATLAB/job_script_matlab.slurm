#!/bin/bash
#
#SBATCH -J program_name
#SBATCH -o program_name.txt
#SBATCH -p compute1
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 00:05:00

module load matlab

matlab -nojvm -nodisplay -r hello_world
