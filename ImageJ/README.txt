ImageJ is a public domain Java image processing program. Following the steps to launch the program on Arc:
1. log onto Arc with -X option:
ssh -X abc123@arc.utsa.edu
2. log onto a computer node (make sure to include --x11):
srun --x11 -p compute1  -n 20 -N 1 -t 24:00:00  --pty bash
3. load the module:
module load imagej
4. Launch the program:
$ ImageJ&
5. open an image file:
Click on File -> Open, then nevigate to the location where the image files are located. And select the file.
