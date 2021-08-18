#!/bin/bash
#
#SBATCH -J hello_world_mpicm
#SBATCH -o hello_world.txt
#SBATCH -p compute1
#SBATCH -t 00:10:00
#SBATCH -N 2
#SBATCH -n 24

mpirun -np 12 ./hello_world &
mpirun -np 12 ./bye_world #the executable name is obtained after compiling the programs
