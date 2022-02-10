To load the gmp library you can perform this command on any node:

   module load gmp

TEST: To test the library you can compile a simple example contained in this
directory called add_example.c

Just compile using after you loaded the module:

gcc -o add_example add_example.c -lgmp -lm

The excutable adds two numbers, 100 + 50. The expected output of the
program should be:

100 + 50 => 150



