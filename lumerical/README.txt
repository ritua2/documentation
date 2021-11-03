Following the steps to launch the program on Arc:
1. log onto Arc with -X option:
ssh -X abc123@arc.utsa.edu
2. log onto a computer node (make sure to include --x11):
srun --x11 -p compute1  -n 20 -N 1 -t 24:00:00  --pty bash
3. load the module:
module load lumerical
4. Launch the program:
$ launcher&
5. Input the license for the first time:
Click License, and select "Ansys" on the top area for License Selection.
Then in the field for Server, input 129.115.106.60, and put 27011 in the field for port.
