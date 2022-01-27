ORCA is an ab initio quantum chemistry program package that contains modern electronic structure methods 
including density functional theory, many-body perturbation, coupled cluster, multireference methods, and semi-empirical quantum chemistry methods

To test the application:
$ module load orca/4.2.1
$ orca orca-test.txt

The end of the output looks like following:

Timings for individual modules:

Sum of individual times         ...        1.905 sec (=   0.032 min)
GTO integral calculation        ...        0.396 sec (=   0.007 min)  20.8 %
SCF iterations                  ...        1.508 sec (=   0.025 min)  79.2 %
                             ****ORCA TERMINATED NORMALLY****
TOTAL RUN TIME: 0 days 0 hours 0 minutes 2 seconds 287 msec
