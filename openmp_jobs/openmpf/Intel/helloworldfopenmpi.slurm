#!/bin/bash
#
#SBATCH -J helloWorldF90OpenMPi
#SBATCH -o helloWorldF90OpenMPi.txt
#SBATCH -p compute1
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 4

export OMP_NUM_THREADS=4
./helloF90OpenMPiOut
