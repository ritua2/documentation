#!/bin/bash
#SBATCH -J helloWorldCcuda
#SBATCH -o helloWorldCcuda.txt    
#SBATCH -p gpu1v100
#SBATCH -t 00:05:00
#SBATCH -N 1  
#SBATCH -n 1   
./helloCcudaOut
