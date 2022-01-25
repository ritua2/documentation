These steps can be used to test OpenBLAS:

1.  Download the test.c file.

2.  module load openblas/0.3.17

3.  Run the following command to compile test.c:

    # gcc -o test test.c -lopenblas
    
4.  Run the test command with the following parameters.  Expected output is shown below.  timeDGEMM.txt output file will also be created.
    
    $ ./test 1000 1000 1000
    test!
    m=1000,n=1000,k=1000,alpha=1.200000,beta=0.001000,sizeofc=1000000
    $ ls -laF
    total 13
    drwx------ 2 abc123 xyzgroup  4096 Jan 25 09:55 ./
    drwxrwx--- 8 abc123 xyzgroup  4096 Jan 25 09:39 ../
    -rwx------ 1 abc123 xyzgroup 13824 Jan 25 09:54 test*
    -rw------- 1 abc123 xyzgroup  1591 Jan 25 09:40 test.c
    -rw------- 1 abc123 xyzgroup    47 Jan 25 09:55 timeDGEMM.txt
    $ cat timeDGEMM.txt
    1000x1000x1000  0.009985 s      200300.450676 MFLOPS
    $

If the openblas/0.3.17 module is not loaded (as in Step #2), compiling test.c will result in the following error:

$ gcc -o test test.c -lopenblas
/usr/bin/ld: cannot find -lopenblas
collect2: error: ld returned 1 exit status
$

Note: 
The test above was taken from here: https://gist.github.com/xianyi/5780018
It was referenced from this page: https://github.com/xianyi/OpenBLAS/wiki/User-Manual#link-the-library
