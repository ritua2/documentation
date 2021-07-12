#!/bin/bash
#
#SBATCH --job-name=helloWorldR
#SBATCH --output=helloWorldR.txt    
#SBATCH --partition=compute1               # defq is the default queue as the all.q in SGE scripts
#SBATCH --time=01:05:00                # Time limit hrs:min:sec. It is an estimation about how long it will take to complete the job. 72:00:00 is the maximum
#SBATCH --nodes=1                      # It should be 1 for all non-mpi jobs.
#SBATCH --ntasks=1                     # It should be 1 for all non-MPI jobs. Otherwise, the same application will run multiple times simultaneously
ml gnu8/8.3.0
ml R/3.6.1
export R_LIBS=~/serial_jobs/serialR
export R_LIBS_USER=$R_LIBS
Rscript eas595_svm_1.r
