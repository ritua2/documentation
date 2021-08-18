#!/bin/bash
#SBATCH -J hello_world_cudac
#SBATCH -o hello_world.txt
#SBATCH -p gpu1v100
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 1

./hello_world #the executable obtained after compiling the program
