Follow the steps below to test the LAMMPS application:
(These steps are meant to be performed on a login node)

$ export LAMMPS_WORKDIR=/work/abc123/opt/lammps/lammps-test   (Just a suggestion for the path)
$ mkdir -p $LAMMPS_WORKDIR/examples

Download the slurm and BOINC.tgz files from GitHub and place them in the $LAMMPS_WORKDIR directory.

$ cd $LAMMPS_WORKDIR/examples

Copy the "examples" directory from the application installation directory to your working location:

$ cp -R /apps/lammps/20201029/examples/* .
$ tar -zxvf ../BOINC.tgz

The slurm files from GitHub should be located here:  $LAMMPS_WORKDIR

$ cd $LAMMPS_WORKDIR
$ for i in `ls lammps-test-*.slurm`; do   sbatch $i; done

Finally, examine the output files in $LAMMPS_WORKDIR/output.  There should be 4 output directories similar to:
lammps-gcc-jobid_11657
lammps-intel-impi-jobid_11658
lammps-intel-serial-jobid_11659
lammps-openmpi-jobid_11660
where the trailing number is the Slurm Job ID.
