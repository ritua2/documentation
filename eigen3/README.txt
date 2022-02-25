To use the eigen headers for compiling code simply load the module
on the command line like this:

   module load eigen/3

After this the headers and macros should be in your path.

TEST, to test the macros you can try compiling the enclosed test.cpp file
with the command:

  g++ -o test test.cpp

And then running the generated 'test' program.

The output should be:

  3  -1
2.5 1.5
