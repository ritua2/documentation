#!/bin/bash
#
#SBATCH -J helloWorldCMPIm
#SBATCH -o helloWorldCMPIm.txt
#SBATCH -p compute1
#SBATCH -t 00:10:00
#SBATCH -N 2
#SBATCH -n 24

mpirun -np 12 ./helloCMPIOut &
mpirun -np 12 ./byeCMPIOut
