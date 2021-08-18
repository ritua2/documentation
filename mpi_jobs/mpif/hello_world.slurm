#!/bin/bash
#
#SBATCH -J hello_world_mpif
#SBATCH -o hello_world.txt
#SBATCH -p compute1                     
#SBATCH --time=00:05:00                # Time limit hrs:min:sec. It is an estimation about how long it will take to complete the job. 72:00:00 is the maximum
#SBATCH --nodes=2                      
#SBATCH --ntasks=12                     

mpirun -np 12 ./hello_world
