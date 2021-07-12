#!/bin/bash
#SBATCH -J helloWorldCm
#SBATCH -o helloWorldCm.txt
#SBATCH -p compute1
#SBATCH -t 00:02:00
#SBATCH -N 1
#SBATCH -n 2
./helloCOut 1 &
./helloCOut 2 &
./helloCOut 3 &
./helloCOut 4 &
./helloCOut 5  
