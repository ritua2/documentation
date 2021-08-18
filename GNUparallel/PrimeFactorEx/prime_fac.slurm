#!/bin/sh 
#SBATCH -J prime_fac 
#SBATCH -o prime_fac.txt 
#SBATCH -p compute1 
#SBATCH -t 00:05:00 
#SBATCH -N 1 
#SBATCH -n 1 
 
ml gcc/11.2.0 
ml parallel/20210722 
 
parallel --joblog logfilename.txt ./prime_fac {1} :::: paramfile.txt #the executable name is obtained after compiling the program
