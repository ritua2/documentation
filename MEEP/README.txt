Meep was tested using the command "meep" and also via conda (with tk).

=== Testing using "meep" command ===

Steps:

$ srun -p testing -A testing --time=01:00:00 -n 1 -w c077 --pty bash
$ module load meep/1.17.1
$ meep straight-waveguide.ctl

This should generate two files:
straight-waveguide-eps-000000.00.h5
straight-waveguide-ez-000200.00.h5


=== Testing using Conda w/TK ===

Meep was tested using the tutorial explained here:
https://meep.readthedocs.io/en/latest/Python_Tutorials/Basics/#fields-in-a-waveguide

$ srun --x11 -p testing -A testing --time=01:00:00 -n 1 -w c077 --pty bash
$ module load anaconda3/current
$ module load meep/1.17.1
$ module load tk/8.6.11

Follow the steps outlined here to create a conda environment for meep (if you don't have one already):
https://meep-hr.readthedocs.io/en/latest/Installation/

$ conda activate <path>/mp
(<path>/mp) $ XDG_RUNTIME_DIR=/tmp
(<path>/mp) $ python examples/straight-waveguide.py >& sw.out

This should generate the 1st X11 image from the tutorial

Close the 1st image to generate the 2nd X11 image from the tutorial.

Close the 2nd image to exit the program.
