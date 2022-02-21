By default gcc 4.8.5 is in the system path but newer versions of gcc
can be loaded via the module system:

    module load gcc/<version number>


TESTING: To test gcc with a simple hello world program, just
run the run_test.sh script that will compile and run the
hello.c file. The reslting output should be:

"Hello world!"

