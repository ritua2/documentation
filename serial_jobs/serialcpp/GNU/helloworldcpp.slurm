#!/bin/bash
#
#SBATCH -J helloWorldCPP
#SBATCH -o helloWorldCPP.txt    
#SBATCH -p compute1
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 1 

./helloCPPOut
