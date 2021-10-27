The following steps were used to test Neuron:

1.  If using MobaXterm w/multiple monitors, adjust this MobaXterm setting:
    Settings -> X11 -> X11 server display mode = "Windowed Mode": X11 server constrained to a single container window

2.  Use SRUN to get a bash shell on a compute node and include the x11 argument:
    $ srun --x11 -p testing -A testing --time=01:00:00 -n 1 -w c077 --pty bash

3.  Run the Neuron Demo:
    $ module load neuron/8.0.0; neurondemo

4.  To exit the Neuron program, on the Iconify Menu -> File -> Quit
