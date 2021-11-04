These steps were used to test mvapich2:

1.  module load mvapich2/2.3.6-gcc_10.3.0

2.  Download the file mvapich2-2.3.6-examples.tgz and extract it in your Arc work directory.

3.  cd into the "examples" directory and compile and run cpi:
    $ cd examples
    $ mpicc cpi.c -o cpi
    
    $ ./cpi
    Process 0 of 1 is on c076
    pi is approximately 3.1415926544231341, Error is 0.0000000008333410
    wall clock time = 0.000159
    $

4.  Now compile and run pmandel:
    $ mpicc pmandel.c -o pmandel -lm
    pmandel.c: In function ‘main’:
    pmandel.c:279:25: warning: passing argument 2 of ‘bind’ from incompatible pointer type [-Wincompatible-pointer-types]
    (There may be a handful of warnings regarding argument types, but those can be ignored.)
    
    $ mpiexec -n 2 pmandel -i
    Welcome to the Mandelbrot/Julia set explorer.
    input xmin ymin xmax ymax max_iter, (0 0 0 0 0 to quit):
    0 0 100 100 20
    read <0 0 100 100 20
    > from stdin
    x0,y0 = (0.000000, 0.000000) x1,y1 = (100.000000,100.000000) max_iter = 20
    input xmin ymin xmax ymax max_iter, (0 0 0 0 0 to quit):
    0 0 0 0 0
    read <0 0 0 0 0
    > from stdin
    x0,y0 = (0.000000, 0.000000) x1,y1 = (0.000000,0.000000) max_iter = 0
    Done calculating mandelbrot, now creating file
    pmandel.ppm
    width: 760
    height: 760
    colors: 100
    str: Mandelbrot over (0.000000-0.000000,0.000000-0.000000), size 760 x 760
    $

5.  Either remove or rename the cpi and pmandel executables.

6.  Unload the current module
    $ module unload mvapich2/2.3.6-gcc_10.3.0

7.  Load the next mvapich2 module
    $ module load mvapich2/2.3.6-gcc_11.2.0

8.  Repeat Step #4
