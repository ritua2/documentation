GNU parallel is a program that allows you to run several copies of a program in parallel.

To use the program you must migrate to a compute node then load the module.

   module load parallel

To run a simple test with the echo command you can do this to parallel to echo 'A B C' like this:

parallel echo ::: A B C

The xpected output should be:

A
B
C

