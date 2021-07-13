#!/bin/bash
#
#SBATCH --job-name=helloWorldOpenMPCPPi
#SBATCH --output=helloWorldOpenMPCPPi.txt
#SBATCH --partition=compute1               
#SBATCH --time=01:05:00                
#SBATCH --nodes=1                     
#SBATCH --ntasks=4   

export OMP_NUM_THREADS=4
./helloOpenMPCPPiOut
