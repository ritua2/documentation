FDTD is a simulator within Lumerical's DEVICE Multiphysics Simulation Suite. Make sure to run Lumerical GUI to set up the license info correctly.
copy the test.ps and X-M_1.fsp in this document directory to a proper directory on Arc
login onto Arc:
$ ssh -X abc123@arc.utsa.edu
submit the batch job on a login node of Arc:
$ sbatch test.ps
