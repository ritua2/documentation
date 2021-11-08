login onto Arc and grab a compute node
copy the examples:
$ cp -r  /apps/fds/6.7.6/Examples/Controls/ .
$ cd Controls
$ module load fds
$ run fds interactively:
$ mpirun -n 2 fds create_remove.fds

use the job script test.ps to submit a batch job:
$ sbatch test.ps


To Test Smokeview,
in the same directory after runnning the fds program, type in teh following command:
$ smokeview create_remove


Note, smokeview work well with MobaXterm on Windows. For Mac, make sure to install the most update XQuatz
