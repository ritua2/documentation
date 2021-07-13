#!/bin/bash
#
#SBATCH -J helloWorldCMPI
#SBATCH -o helloWorldCMPI.txt
#SBATCH -p compute1
#SBATCH -t 00:10:00
#SBATCH -N 2
#SBATCH -n 12
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ayush.gandhi@utsa.edu


mpirun -np 12 ./helloCMPIOut
