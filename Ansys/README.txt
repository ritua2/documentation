The following steps were used to test Ansys:

1.  Use SRUN to get a bash shell on a compute node and include the x11 argument:
    $ srun --x11 -p testing -A testing --time=01:00:00 -n 1 -w c077 --pty bash
    
2.  Load the Ansys module:
    $ module load ansys/2019R3
    
3.  Run Ansys:
    $ runwb2
