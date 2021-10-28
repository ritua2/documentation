#!/bin/bash
#SBATCH --job-name=lammps-gcc
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

EXAMPLE_DIR=$LAMMPS_WORKDIR/examples
TESTVER=lammps-gcc
OUTPUT_DIR=$LAMMPS_WORKDIR/output/$TESTVER-jobid_$SLURM_JOBID

mkdir -p $OUTPUT_DIR
scontrol show job $SLURM_JOBID > $OUTPUT_DIR/info.$SLURM_JOBID
module load lammps/20210730-serial/gcc/11.2.0

cd $EXAMPLE_DIR/BOINC
lmp_gcc_serial < aluminium.in > $OUTPUT_DIR/${TESTVER}_aluminium_test-${SLURM_JOBID}.txt

cd $EXAMPLE_DIR/ASPHERE/poly
lmp_gcc_serial < in.poly > $OUTPUT_DIR/${TESTVER}_poly_test-${SLURM_JOBID}.txt

cd $EXAMPLE_DIR/hyper
lmp_gcc_serial < in.hyper.local > $OUTPUT_DIR/${TESTVER}_hyper_test-${SLURM_JOBID}.txt

cd $EXAMPLE_DIR/min
lmp_gcc_serial < in.min > $OUTPUT_DIR/${TESTVER}_min_test-${SLURM_JOBID}.txt
