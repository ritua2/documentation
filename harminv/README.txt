The following steps can be used to test harminv:
https://github.com/NanoComp/harminv

1.  From a login node on Arc, load the harminv module:
    
    $ module load harminv/1.4.1
    
2.  Download the sines-output.txt file.  This output was generated from the sines program that is included in the harminv gitub repository.  It generates a signal consisting of a sum of decaying sinuoids with specified complex frequencies. Using the example provided in the URL above, the sines-output.txt file was generated from the command: 

    $ sines 0.1+0.01i 0.08+0.001i

This command generates 10000 data points consisting of a signal with complex frequencies 0.1+0.01i and 0.08+0.001i, with amplitudes 1 and 2 respectively, sampled at time intervals dt=1.0. This file will be used as input to harminv.  

3.  Execute the harminv command:

    $ cat sines-output.txt | harminv 0.05-0.15

4.  This command should generate the following output:

    frequency, decay constant, Q, amplitude, phase, error
    0.08, 1.000000e-03, 251.327, 2, 3.14159, 4.823627e-16
    0.1, 1.000000e-02, 31.4159, 1, 6.04594e-14, 2.554004e-15

The above output indicates a successful test of harminv.
