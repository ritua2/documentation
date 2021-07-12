#!/bin/sh
#SBATCH -J helloWorldCgnup
#SBATCH -o helloWorldCgnup.txt    
#SBATCH -p gpudev
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 1 
ml gnu8/8.3.0
ml parallel

parallel --joblog mylog.txt ./helloCOut {1} :::: myout.txt
