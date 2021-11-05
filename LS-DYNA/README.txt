LS-DYNA is a general-purpose finite element program capable of simulating complex real world problems.
To test it, download the example:
$ wget https://ftp.lstc.com/anonymous/outgoing/inaki/tutorial/ICFD_example_cylinderflow.zip
$ unzip ICFD_example_cylinderflow.zip

Test interactively:
$ module load ls-dyna
$ ls-dyna_smp_d_r1010_x64_redhat5_ifort160 i=input.k ncpu=30

Test batch:
Use the job script test.ps to submit a batch job on a login node of Arc:
sbatch test.ps
