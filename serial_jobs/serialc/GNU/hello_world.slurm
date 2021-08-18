#!/bin/bash
#SBATCH -J helloWorldC
#SBATCH -o helloWorldC.txt    
#SBATCH -p compute1
#SBATCH -t 00:02:00
#SBATCH -N 1     
#SBATCH -n 1     
./hello_world
