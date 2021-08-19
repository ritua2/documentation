#!/bin/sh
#SBATCH -J hello_world_gnuc
#SBATCH -o hello_world.txt    
#SBATCH -p compute1
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 20 

ml gnu8/8.3.0
ml parallel/20210622

parallel --joblog mylog.txt ./hello_world {1} :::: myout.txt #the executable name is obtained after compiling the program
