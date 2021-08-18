#!/bin/bash
#
#SBATCH -J hello_world_mpif
#SBATCH -o hello_world.txt
#SBATCH -p compute1                     
#SBATCH --time=00:05:00
#SBATCH --nodes=2                      
#SBATCH --ntasks=12                     

mpirun -np 12 ./hello_world #the executable name obtained after compiling the program
