#!/bin/sh
#SBATCH -J prime_fac_rf
#SBATCH -o prime_fac_rf.txt    
#SBATCH -p compute1
#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -n 20 

ml gcc/11.2.0
ml parallel/20210722

parallel --resume-failed --joblog logfilename_rf.txt ./prime_fac {1} :::: paramfile.txt #executable named prime_fac is obtained by compiling the program
