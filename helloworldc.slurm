#!/bin/bash
#
#SBATCH -J helloWorldC
#SBATCH -o helloWorldC.txt
#SBATCH -partition compute1               # defq is the default queue as the all.q in SGE scripts
#SBATCH -t 00:02:00                # Time limit hrs:min:sec. It is an estimation about how long it will take to complete the job. 72:00:00 is the maximum
#SBATCH -N 1                      # It should be 1 for all non-mpi jobs.
#SBATCH -n 1                     # It should be 1 for all non-MPI jobs. Otherwise, the same application will run multiple times simultaneously

./helloCOut
