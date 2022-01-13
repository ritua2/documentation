The following steps were used to test Agisoft Metashape via the GUI:

1.  Use SRUN to get a bash shell on a compute node and include the x11 argument:
    srun --x11 -p testing -A testing --time=01:00:00 -n 1 -w c077 --pty bash

2.  Set XDG_RUNTIME_DIR=/tmp 
    This addresses this error on startup: 
    QStandardPaths: error creating runtime directory '/run/user/<UID>'
    
3.  Load the Metashape module:
    $ module load metashape-pro/1.7.3
    
4.  Run Agisoft Metashape:
    $ metashape.sh

The following steps can be used to test Agisoft Metashape via the command line:

1.  Copy the Metashape project zip file exmaple (monument.zip) to your working directory 
    and unzip the file.
    $ cd /work/<abc123>
    $ mkdir metashape-test; cd metashape-test
    $ cp /apps/metashape/1.7.3/examples/monument.zip .
    $ unzip monument.zip

2.  Download the metashape-test.py Python script.

3.  Use SRUN to get a bash shell on a compute node and include the x11 argument:
    srun --x11 -p testing -A testing --time=01:00:00 -n 1 -w c077 --pty bash
    (X11 forwarding is still needed even though this test will be performed
    on the command line.)
 
4.  Load the Metashape module:
    $ module load metashape-pro/1.7.3
    
5.  Run this python script via Agisoft Metashape:
    $ metashape.sh -r metashape-test.py --file <path to the monument.psz>
    
6.  Sample output for a successfull test:
    $ metashape -r metashape-test.py --file monument/monument.psz
    QStandardPaths: runtime directory '/tmp' is not owned by UID 189163514, but a directory permissions 0777 owned by UID 0 GID 0
    Agisoft Metashape Professional Version: 1.7.3 build 12473 (64 bit)
    Platform: Linux
    CPU: Intel(R) Xeon(R) Gold 6132 CPU @ 2.60GHz (server)
    CPU family: 6 model: 85 signature: 50654h
    RAM: 187.2 GB
    LoadProject: path = monument/monument.psz
    loaded project in 0.752272 sec
    Success: Able to confirm chunk label from sample project.

    If the test was not successful, the final output line would read:
    Error: Unable to confirm chunk label from sample project.
