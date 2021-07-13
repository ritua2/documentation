#!/bin/bash
#
#SBATCH -J helloWorldF90OpenMP
#SBATCH -o helloWorldF90OpenMP.txt
#SBATCH -p compute1
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 4
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ayush.gandhi@utsa.edu

export OMP_NUM_THREADS=4
./helloF90OpenMPOut
