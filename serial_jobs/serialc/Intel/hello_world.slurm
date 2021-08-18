#!/bin/bash
#
#SBATCH -J hello_world
#SBATCH -o hello_world.txt    
#SBATCH -p compute1
#SBATCH -t 00:05:00  
#SBATCH -N 1                      # It should be 1 for all non-mpi jobs.
#SBATCH -n 1

./hello_world #the executable is obtained after compiling the program
