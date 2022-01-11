To test out hoomd 2.9.6 you can move to a compute node to test the cpu version or a gpu node to check the gpu version.

To test the cpu load the cpu compiled module with:

module load hoomd/cpu/2.9.6

Then run the test program contained here called test.py via this command:

/usr/bin/python3 test.py

The output should be what is contained in the cpu_output.txt file.

To perform the test on the gpu module, load the gpu module via:

module load hoomd/gpu/2.9.6

Then run the same command:

/usr/bin/python3 test.py

The output to this run should match what is in the output file gpu_output.txt

