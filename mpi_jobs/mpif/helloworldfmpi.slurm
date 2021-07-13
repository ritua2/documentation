#!/bin/bash
#
#SBATCH -J helloWorldF90MPI
#SBATCH -o helloWorldF90MPI.txt
#SBATCH -p compute1               # defq is the default queue as the all.q in SGE scripts
#SBATCH --time=00:05:00                # Time limit hrs:min:sec. It is an estimation about how long it will take to complete the job. 72:00:00 is the maximum
#SBATCH --nodes=2                      # It should be 1 for all non-mpi jobs.
#SBATCH --ntasks=12                     # It should be 1 for all non-MPI jobs. Otherwise, the same application will run multiple times simultaneously

mpirun -np 12 ./helloF90MPIOut
