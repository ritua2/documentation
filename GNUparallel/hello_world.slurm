#!/bin/sh
#SBATCH -J hello_world_gnuc
#SBATCH -o hello_world.txt    
#SBATCH -p gpudev
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 1 

ml gnu8/8.3.0
ml parallel

parallel --joblog mylog.txt ./hello_world {1} :::: myout.txt #the executable name is obtained after compiling the program
