#!/bin/bash
#SBATCH --job-name=lammps-openmpi
#SBATCH --error=slurm-%j.err
#SBATCH --output=slurm-%j.out 
#SBATCH --account=testing
#SBATCH --partition=testing
#SBATCH --time=1:00:00
#SBATCH --oversubscribe
#SBATCH -N 2 #specifies how many compute nodes we want to use
#SBATCH -n 8 #specifies how many CPU cores we want to use

#
# Adjust LAMMPS_WORKDIR to your environment, if necessary
#
#LAMMPS_WORKDIR=/work/abc123/opt/lammps/lammps-test/

EXAMPLES_DIR=$LAMMPS_WORKDIR/examples
TESTVER=lammps-openmpi
OUTPUT_DIR=$LAMMPS_WORKDIR/output/$TESTVER-jobid_$SLURM_JOBID

mkdir -p $OUTPUT_DIR
scontrol show job $SLURM_JOBID > $OUTPUT_DIR/info.$SLURM_JOBID
module load lammps/20210730-mpi/openmpi/4.1.1/gcc/11.2.0

cd $EXAMPLES_DIR/BOINC
mpirun --oversubscribe -np 4 lmp_openmpi < aluminium.in > $OUTPUT_DIR/${TESTVER}_aluminium_test-${SLURM_JOBID}.txt

cd $EXAMPLES_DIR/ASPHERE/poly
mpirun --oversubscribe -np 8 lmp_openmpi < in.poly > $OUTPUT_DIR/${TESTVER}_poly_test-${SLURM_JOBID}.txt

cd $EXAMPLES_DIR/hyper
mpirun --oversubscribe -np 8 lmp_openmpi < in.hyper.local > $OUTPUT_DIR/${TESTVER}_hyper_test-${SLURM_JOBID}.txt

cd $EXAMPLES_DIR/min
mpirun --oversubscribe -np 8 lmp_openmpi < in.min > $OUTPUT_DIR/${TESTVER}_min_test-${SLURM_JOBID}.txt
