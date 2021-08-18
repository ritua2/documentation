#!/bin/bash
#SBATCH -J hello_world_r
#SBATCH -o hello_world.txt
#SBATCH -p compute1
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 1

ml R/4.1.0
Rscript hello_world.r #R program_name
