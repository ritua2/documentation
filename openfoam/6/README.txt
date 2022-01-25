To use openfoam migrate to a compute node and load the openfoam module via the command:

   module load openfoam/6

After you load it you will receive a prompt to source the environment with the command:

   . $foamDotFile

To run the test cd into the openfoam test case directory and run the test.sh script.

The expected output will be what is in the out.txt file with some variances for the timestamps.

There will be a bunch of processor<NUM> directories generated. You can remove them by doing a:

    rm -rf processor*
