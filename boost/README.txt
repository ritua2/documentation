To load the boost module just perform the following command:

   module load boost

This will put the libraries and headers in your path. Now you can compile
against the libraries.

TEST: to test the boost library you can compile the version.cpp file in
this directory with this command:

     g++ -o verion version.cpp

Then run the command to print out the version number:

Boost version: 1.78.0

