#!/bin/bash
#
#SBATCH -J helloWorldOpenMPCPP
#SBATCH -o helloWorldOpenMPCPP.txt
#SBATCH -p compute1
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 4
export OMP_NUM_THREADS=4

./helloOpenMPCPPOut
