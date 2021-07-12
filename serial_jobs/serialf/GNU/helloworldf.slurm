#!/bin/bash
#SBATCH -J helloWorldF90
#SBATCH -o helloWorldF90.txt    
#SBATCH -p compute1
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 1

./helloF90Out
