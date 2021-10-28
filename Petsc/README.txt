Follow the process below to test the PETSC application with gcc and then with intel:

[ gcc ]

$ mkdir /work/abs123/opt/petsc/tutorials-gcc
$ cd /work/abs123/opt/petsc/tutorials-gcc
$ cp -R /apps/petsc/3.15.2/gcc/10.3.0/share/petsc/examples/src/ksp/ksp/tutorials/* .
$ module load petsc/3.15.2-gcc-10.3.0
$ echo $PETSC_DIR
/apps/petsc/3.15.2/gcc/10.3.0
$ echo $PETSC_ARCH    (It should be blank)

$ make ex2
$ mpiexec -n 1 ./ex2
--------------------------------------------------------------------------
WARNING: There was an error initializing an OpenFabrics device.

  Local host:   c076
  Local device: mlx5_0
--------------------------------------------------------------------------
Norm of error 0.000156044 iterations 6
$ mpiexec --oversubscribe -n 2 ./ex2
--------------------------------------------------------------------------
WARNING: There was an error initializing an OpenFabrics device.

  Local host:   c076
  Local device: mlx5_0
--------------------------------------------------------------------------
Norm of error 0.000411674 iterations 7
[c076:226214] 1 more process has sent help message help-mpi-btl-openib.txt / error in device init
[c076:226214] Set MCA parameter "orte_base_help_aggregate" to 0 to see all help / error messages
$

[ intel ]

$ module unload petsc/3.15.2-gcc-10.3.0
$ mkdir /work/abc123/opt/petsc/tutorials-intel
$ cd /work/abc123/opt/petsc/tutorials-intel
$ cp -R /apps/petsc/3.15.2/intel/2021.2.0/share/petsc/examples/src/ksp/ksp/tutorials/* .
$ module load petsc/3.15.2-intel-2021.2.0
$ echo $PETSC_DIR
/apps/petsc/3.15.2/intel/2021.2.0
$ echo $PETSC_ARCH    (It should be blank)

$ make ex2
$ mpiexec -n 1 ./ex2
Norm of error 0.000156044 iterations 6
$ mpiexec -n 2 ./ex2
Norm of error 0.000411674 iterations 7
$

That's it.
