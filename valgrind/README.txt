Valgrind is a programming tool for memory debugging, memory leak detection, and profiling. 

To test the app, compile the test.c 
$ gcc test.c
The load the valgrind module:
$ module load valgrind
$ valgrind -s --leak-check=yes --leak-check=full --show-leak-kinds=all ./a.out

The output should look like following:
==132282== 1 errors in context 1 of 39:
==132282== Invalid write of size 4
==132282==    at 0x4008A0: f (in /work/iqr224/test-cases/valgrind/a.out)
==132282==    by 0x4008B1: main (in /work/iqr224/test-cases/valgrind/a.out)
==132282==  Address 0x5952f38 is 0 bytes after a block of size 40 alloc'd
==132282==    at 0x4C2B067: malloc (vg_replace_malloc.c:380)
==132282==    by 0x400893: f (in /work/iqr224/test-cases/valgrind/a.out)
==132282==    by 0x4008B1: main (in /work/iqr224/test-cases/valgrind/a.out)
==132282== 
