#!/bin/bash
#
#SBATCH -J helloWorldCPPi
#SBATCH -o helloWorldCPPi.txt    
#SBATCH -p compute1
#SBATCH -t 00:05:00
#SBATCH -N 1 
#SBATCH -n 1

./helloCPPiOut
