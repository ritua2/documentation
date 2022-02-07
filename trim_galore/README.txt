To test the operation of trimgalore, follow these steps:

1.  Login to Arc with your abc123 account.

2.  Load the trim_galore module:
    $ module load trimgalore/0.6.5
    
3.  Download the test file: smallRNA_100K.fastq.gz
    $ wget https://github.com/FelixKrueger/TrimGalore/raw/master/test_files/smallRNA_100K.fastq.gz
    This, as well as other test files, are available from github here under the "test_files" directory:
    https://github.com/FelixKrueger/TrimGalore

4.  Run trim_galore from the command line on the downloaded test file:
    $ trim_galore smallRNA_100K.fastq.gz

5.  After running the command, two files should be generated, a text report file and a "trimmed" .gz file:

    [c075: testing]$ ls -laF
    total 3276
    ...
    -rw------- 1 ftk939 arcadmins 2091337 Feb  7 16:18 smallRNA_100K.fastq.gz
    -rw------- 1 ftk939 arcadmins    2780 Feb  7 16:23 smallRNA_100K.fastq.gz_trimming_report.txt
    -rw------- 1 ftk939 arcadmins 1248359 Feb  7 16:23 smallRNA_100K_trimmed.fq.gz
    [c075: testing]$

6.  The report file should contain these lines at the bottom of the text file:

    RUN STATISTICS FOR INPUT FILE: smallRNA_100K.fastq.gz
    ============================================
    100000 sequences processed in total
    Sequences removed because they became shorter than the length cutoff of 18 bp:  17169 (17.2%)

If the two output files were generated and the text file contains the lines displayed in Step #6,
the test was completed successfully.
