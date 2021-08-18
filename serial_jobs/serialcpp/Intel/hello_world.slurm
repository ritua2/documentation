#!/bin/bash
#
#SBATCH -J hello_world_cpp
#SBATCH -o hello_world.txt    
#SBATCH -p compute1
#SBATCH -t 00:05:00
#SBATCH -N 1 
#SBATCH -n 1

./hello_world #the executable name is obtained after compiling the program
