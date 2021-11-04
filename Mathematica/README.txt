The following steps were used to test Mathematica:

1.  Use SRUN to get a bash shell on a compute node and include the x11 argument:
    $ srun --x11 -p testing -A testing --time=01:00:00 -n 1 --pty bash

2.  Load the Mathematica module:
    $ load module mathematica/12.3

3.  Run Mathematica:
    $ mathematica

4.  Click on "New Document"

5.  On the new document, select File -> Quit.
