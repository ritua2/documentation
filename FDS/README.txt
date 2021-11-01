login onto Arc and grab a compute node
copy the examples:
cp -r  /apps/fds/6.7.6/Examples/Controls/ .
cd Controls
module load fds
run fds interactively:
mpirun -n 2 fds create_remove.fds

use the job script test.ps to submit a batch job:
sbatch test.ps
