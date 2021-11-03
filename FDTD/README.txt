FDTD is a simulator within Lumerical's DEVICE Multiphysics Simulation Suite. Make sure to run Lumerical GUI to set up the license info correctly.
login onto Arc:
$ ssh -X abc123@arc.utsa.edu
copy the test.ps in this document directory to a proper directory on Arc
copy the data file X-M_1.fsp from /apps/lumerical/examples/ to the same direcctory.
submit the batch job on a login node of Arc:
$ sbatch test.ps
