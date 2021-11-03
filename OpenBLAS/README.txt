These steps were used to test OpenBLAS:

1.  Download the file OpenBLAS-0.3.17-TEST.tgz and extract it in your Arc work directory.

2.  module load openblas/0.3.17

3.  cd into both the test and then utest directories.  In each directory, run "make".  Sample output is displayed below.

====
test
====
[c076: test]$ make
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./sblat1
 Real BLAS Test Program Results


 Test of subprogram number  1             SDOT
                                    ----- PASS -----

 Test of subprogram number  2            SAXPY
                                    ----- PASS -----

 Test of subprogram number  3            SROTG
                                    ----- PASS -----

 Test of subprogram number  4             SROT
                                    ----- PASS -----

 Test of subprogram number  5            SCOPY
                                    ----- PASS -----

 Test of subprogram number  6            SSWAP
                                    ----- PASS -----

 Test of subprogram number  7            SNRM2
                                    ----- PASS -----

 Test of subprogram number  8            SASUM
                                    ----- PASS -----

 Test of subprogram number  9            SSCAL
                                    ----- PASS -----

 Test of subprogram number 10            ISAMAX
                                    ----- PASS -----

 Test of subprogram number 11            SROTMG
                                    ----- PASS -----

 Test of subprogram number 12            SROTM
                                    ----- PASS -----

 Test of subprogram number 13            SDSDOT
                                    ----- PASS -----
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./dblat1
 Real BLAS Test Program Results


 Test of subprogram number  1             DDOT
                                    ----- PASS -----

 Test of subprogram number  2            DAXPY
                                    ----- PASS -----

 Test of subprogram number  3            DROTG
                                    ----- PASS -----

 Test of subprogram number  4             DROT
                                    ----- PASS -----

 Test of subprogram number  5            DCOPY
                                    ----- PASS -----

 Test of subprogram number  6            DSWAP
                                    ----- PASS -----

 Test of subprogram number  7            DNRM2
                                    ----- PASS -----

 Test of subprogram number  8            DASUM
                                    ----- PASS -----

 Test of subprogram number  9            DSCAL
                                    ----- PASS -----

 Test of subprogram number 10            IDAMAX
                                    ----- PASS -----

 Test of subprogram number 11            DROTMG
                                    ----- PASS -----

 Test of subprogram number 12            DROTM
                                    ----- PASS -----

 Test of subprogram number 13            DSDOT
                                    ----- PASS -----
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./cblat1
 Complex BLAS Test Program Results


 Test of subprogram number  1            CDOTC
                                    ----- PASS -----

 Test of subprogram number  2            CDOTU
                                    ----- PASS -----

 Test of subprogram number  3            CAXPY
                                    ----- PASS -----

 Test of subprogram number  4            CCOPY
                                    ----- PASS -----

 Test of subprogram number  5            CSWAP
                                    ----- PASS -----

 Test of subprogram number  6            SCNRM2
                                    ----- PASS -----

 Test of subprogram number  7            SCASUM
                                    ----- PASS -----

 Test of subprogram number  8            CSCAL
                                    ----- PASS -----

 Test of subprogram number  9            CSSCAL
                                    ----- PASS -----

 Test of subprogram number 10            ICAMAX
                                    ----- PASS -----
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./zblat1
 Complex BLAS Test Program Results


 Test of subprogram number  1            ZDOTC
                                    ----- PASS -----

 Test of subprogram number  2            ZDOTU
                                    ----- PASS -----

 Test of subprogram number  3            ZAXPY
                                    ----- PASS -----

 Test of subprogram number  4            ZCOPY
                                    ----- PASS -----

 Test of subprogram number  5            ZSWAP
                                    ----- PASS -----

 Test of subprogram number  6            DZNRM2
                                    ----- PASS -----

 Test of subprogram number  7            DZASUM
                                    ----- PASS -----

 Test of subprogram number  8            ZSCAL
                                    ----- PASS -----

 Test of subprogram number  9            ZDSCAL
                                    ----- PASS -----

 Test of subprogram number 10            IZAMAX
                                    ----- PASS -----
OPENBLAS_NUM_THREADS=2 ./sblat1
 Real BLAS Test Program Results


 Test of subprogram number  1             SDOT
                                    ----- PASS -----

 Test of subprogram number  2            SAXPY
                                    ----- PASS -----

 Test of subprogram number  3            SROTG
                                    ----- PASS -----

 Test of subprogram number  4             SROT
                                    ----- PASS -----

 Test of subprogram number  5            SCOPY
                                    ----- PASS -----

 Test of subprogram number  6            SSWAP
                                    ----- PASS -----

 Test of subprogram number  7            SNRM2
                                    ----- PASS -----

 Test of subprogram number  8            SASUM
                                    ----- PASS -----

 Test of subprogram number  9            SSCAL
                                    ----- PASS -----

 Test of subprogram number 10            ISAMAX
                                    ----- PASS -----

 Test of subprogram number 11            SROTMG
                                    ----- PASS -----

 Test of subprogram number 12            SROTM
                                    ----- PASS -----

 Test of subprogram number 13            SDSDOT
                                    ----- PASS -----
OPENBLAS_NUM_THREADS=2 ./dblat1
 Real BLAS Test Program Results


 Test of subprogram number  1             DDOT
                                    ----- PASS -----

 Test of subprogram number  2            DAXPY
                                    ----- PASS -----

 Test of subprogram number  3            DROTG
                                    ----- PASS -----

 Test of subprogram number  4             DROT
                                    ----- PASS -----

 Test of subprogram number  5            DCOPY
                                    ----- PASS -----

 Test of subprogram number  6            DSWAP
                                    ----- PASS -----

 Test of subprogram number  7            DNRM2
                                    ----- PASS -----

 Test of subprogram number  8            DASUM
                                    ----- PASS -----

 Test of subprogram number  9            DSCAL
                                    ----- PASS -----

 Test of subprogram number 10            IDAMAX
                                    ----- PASS -----

 Test of subprogram number 11            DROTMG
                                    ----- PASS -----

 Test of subprogram number 12            DROTM
                                    ----- PASS -----

 Test of subprogram number 13            DSDOT
                                    ----- PASS -----
OPENBLAS_NUM_THREADS=2 ./cblat1
 Complex BLAS Test Program Results


 Test of subprogram number  1            CDOTC
                                    ----- PASS -----

 Test of subprogram number  2            CDOTU
                                    ----- PASS -----

 Test of subprogram number  3            CAXPY
                                    ----- PASS -----

 Test of subprogram number  4            CCOPY
                                    ----- PASS -----

 Test of subprogram number  5            CSWAP
                                    ----- PASS -----

 Test of subprogram number  6            SCNRM2
                                    ----- PASS -----

 Test of subprogram number  7            SCASUM
                                    ----- PASS -----

 Test of subprogram number  8            CSCAL
                                    ----- PASS -----

 Test of subprogram number  9            CSSCAL
                                    ----- PASS -----

 Test of subprogram number 10            ICAMAX
                                    ----- PASS -----
OPENBLAS_NUM_THREADS=2 ./zblat1
 Complex BLAS Test Program Results


 Test of subprogram number  1            ZDOTC
                                    ----- PASS -----

 Test of subprogram number  2            ZDOTU
                                    ----- PASS -----

 Test of subprogram number  3            ZAXPY
                                    ----- PASS -----

 Test of subprogram number  4            ZCOPY
                                    ----- PASS -----

 Test of subprogram number  5            ZSWAP
                                    ----- PASS -----

 Test of subprogram number  6            DZNRM2
                                    ----- PASS -----

 Test of subprogram number  7            DZASUM
                                    ----- PASS -----

 Test of subprogram number  8            ZSCAL
                                    ----- PASS -----

 Test of subprogram number  9            ZDSCAL
                                    ----- PASS -----

 Test of subprogram number 10            IZAMAX
                                    ----- PASS -----
rm -f ?BLAT2.SUMM
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./sblat2 < ./sblat2.dat
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./dblat2 < ./dblat2.dat
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./cblat2 < ./cblat2.dat
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./zblat2 < ./zblat2.dat
rm -f ?BLAT2.SUMM
OPENBLAS_NUM_THREADS=2 ./sblat2 < ./sblat2.dat
OPENBLAS_NUM_THREADS=2 ./dblat2 < ./dblat2.dat
OPENBLAS_NUM_THREADS=2 ./cblat2 < ./cblat2.dat
OPENBLAS_NUM_THREADS=2 ./zblat2 < ./zblat2.dat
rm -f ?BLAT3.SUMM
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./sblat3 < ./sblat3.dat
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./dblat3 < ./dblat3.dat
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./cblat3 < ./cblat3.dat
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./zblat3 < ./zblat3.dat
rm -f ?BLAT3.SUMM
OPENBLAS_NUM_THREADS=2 ./sblat3 < ./sblat3.dat
OPENBLAS_NUM_THREADS=2 ./dblat3 < ./dblat3.dat
OPENBLAS_NUM_THREADS=2 ./cblat3 < ./cblat3.dat
OPENBLAS_NUM_THREADS=2 ./zblat3 < ./zblat3.dat
[c076: test]$ 


=====
utest
=====
[c076: utest]$ make
cc -O2 -DUTEST_CHECK -DSANITY_CHECK -DREFNAME=f_ -DMAX_STACK_ALLOC=2048 -Wall -m64 -DF_INTERFACE_GFORT -fPIC -DNO_AVX512 -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=56 -DMAX_PARALLEL_NUMBER=1 -DBUILD_SINGLE=1 -DBUILD_DOUBLE=1 -DBUILD_COMPLEX=1 -DBUILD_COMPLEX16=1 -DVERSION=\"0.3.17\" -msse3 -mssse3 -msse4.1 -mavx -mavx2 -mavx2 -UASMNAME -UASMFNAME -UNAME -UCNAME -UCHAR_NAME -UCHAR_CNAME -DASMNAME= -DASMFNAME=_ -DNAME=_ -DCNAME= -DCHAR_NAME=\"_\" -DCHAR_CNAME=\"\" -DNO_AFFINITY -I..  -o openblas_utest utest_main.o test_min.o test_amax.o test_ismin.o test_rotmg.o test_axpy.o test_dotu.o test_dsdot.o test_swap.o test_rot.o test_potrs.o test_kernel_regress.o test_fork.o test_post_fork.o ../libopenblas_haswellp-r0.3.17.a -lm -lpthread -lgfortran -L/usr/lib/gcc/x86_64-redhat-linux/4.8.5 -L/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../lib64 -L/lib/../lib64 -L/usr/lib/../lib64 -L/apps/openblas/0.3.17/lib -L/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../..  -lgfortran -lm -lquadmath -lm -lc
./openblas_utest
TEST 1/36 max:smax_zero [OK]
TEST 2/36 max:dmax_positive [OK]
TEST 3/36 max:smax_negative [OK]
TEST 4/36 min:smin_zero [OK]
TEST 5/36 min:dmin_positive [OK]
TEST 6/36 min:smin_negative [OK]
TEST 7/36 amax:damax [OK]
TEST 8/36 amax:samax [OK]
TEST 9/36 ismax:negative_step_2 [OK]
TEST 10/36 ismax:positive_step_2 [OK]
TEST 11/36 ismin:negative_step_2 [OK]
TEST 12/36 ismin:positive_step_2 [OK]
TEST 13/36 drotmg:drotmg_D1_big_D2_big_flag_zero [OK]
TEST 14/36 drotmg:rotmg_D1eqD2_X1eqX2 [OK]
TEST 15/36 drotmg:rotmg_issue1452 [OK]
TEST 16/36 drotmg:rotmg [OK]
TEST 17/36 axpy:caxpy_inc_0 [OK]
TEST 18/36 axpy:saxpy_inc_0 [OK]
TEST 19/36 axpy:zaxpy_inc_0 [OK]
TEST 20/36 axpy:daxpy_inc_0 [OK]
TEST 21/36 zdotu:zdotu_offset_1 [OK]
TEST 22/36 zdotu:zdotu_n_1 [OK]
TEST 23/36 dsdot:dsdot_n_1 [OK]
TEST 24/36 swap:cswap_inc_0 [OK]
TEST 25/36 swap:sswap_inc_0 [OK]
TEST 26/36 swap:zswap_inc_0 [OK]
TEST 27/36 swap:dswap_inc_0 [OK]
TEST 28/36 rot:csrot_inc_0 [OK]
TEST 29/36 rot:srot_inc_0 [OK]
TEST 30/36 rot:zdrot_inc_0 [OK]
TEST 31/36 rot:drot_inc_0 [OK]
TEST 32/36 potrf:smoketest_trivial [OK]
TEST 33/36 potrf:bug_695 [OK]
TEST 34/36 kernel_regress:skx_avx [OK]
TEST 35/36 fork:safety [OK]
TEST 36/36 fork:safety_after_fork_in_parent [OK]
RESULTS: 36 tests (36 ok, 0 failed, 0 skipped) ran in 187 ms
[c076: utest]$
