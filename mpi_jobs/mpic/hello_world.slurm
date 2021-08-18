#!/bin/bash
#
#SBATCH -J hello_world_mpic
#SBATCH -o hello_world.txt
#SBATCH -p compute1
#SBATCH -t 00:10:00
#SBATCH -N 2
#SBATCH -n 12

mpirun -np 12 ./hello_world #the executable obtained after compiling the program
