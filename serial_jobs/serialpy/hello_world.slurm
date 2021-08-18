#!/bin/bash
#SBATCH -J hello_world_py
#SBATCH -o hello_world.txt    
#SBATCH -p compute1
#SBATCH -t 00:05:00 
#SBATCH -N 1
#SBATCH -n 1

python3 hello_world.py #program_name
