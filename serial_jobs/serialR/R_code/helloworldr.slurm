#!/bin/bash
#SBATCH -J program_name
#SBATCH -o program_name.txt
#SBATCH -p compute1
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 1
ml gnu8/8.3.0
ml R/3.6.1
Rscript hello_world.r

