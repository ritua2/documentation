#!/bin/bash
#
#SBATCH -J helloWorldCPPMPI
#SBATCH -o helloWorldCPPMPI.txt
#SBATCH -p compute1
#SBATCH -t 00:05:00                # Time limit hrs:min:sec. It is an estimation about how long it will take to complete the job. 72:00:00 is the maximum
#SBATCH -N 2                      # It should be 1 for all non-mpi jobs.
#SBATCH -n 12                     # It should be 1 for all non-MPI jobs. Otherwise, the same application will run multiple times simultaneously


mpirun -np 12 ./helloCPPMPIOut
