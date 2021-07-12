#!/bin/bash
#
#SBATCH -J helloWorldCi
#SBATCH -o helloWorldCi.txt    
#SBATCH -p compute1
#SBATCH -t 00:05:00  
#SBATCH -N 1                      # It should be 1 for all non-mpi jobs.
#SBATCH -n 1

./helloCiOut
