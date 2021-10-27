The following steps were used to test Agisoft Metashape:

1.  If using MobaXterm w/multiple monitors, adjust this MobaXterm setting:
    Settings -> X11 -> X11 server display mode = "Windowed Mode": X11 server constrained to a single container window

2.  Use SRUN to get a bash shell on a compute node and include the x11 argument:
    srun --x11 -p testing -A testing --time=01:00:00 -n 1 -w c077 --pty bash

3.  Set XDG_RUNTIME_DIR=/tmp 
    This addresses this error on startup: 
    QStandardPaths: error creating runtime directory '/run/user/<UID>'
    
4.  Load the Metashape module:
    $ module load metashapre-pro/1.7.3
    
4.  Run Agisoft Metashape:
    $ metashape.sh
