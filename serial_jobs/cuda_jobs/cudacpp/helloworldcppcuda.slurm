#!/bin/sh
#SBATCH -J helloWorldCPPcuda
#SBATCH -o helloWorldCPPcuda.txt
#SBATCH -p gpu2v100
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --gres=gpu:v100:0
./helloCPPcudaOut
