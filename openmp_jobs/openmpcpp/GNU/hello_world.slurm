#!/bin/bash
#
#SBATCH -J hello_world_openmpcpp
#SBATCH -o hello_world.txt
#SBATCH -p compute1
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 4
export OMP_NUM_THREADS=4

./hello_world #the executable obtained after compiling the program
