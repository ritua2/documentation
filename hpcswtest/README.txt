The HPCSWTEST is an application automatic testing framework derived 
from derived from the work created by Idaho National Laboratory 
((https://github.com/idaholab/hpcswtest). 

To use the framework, follow the instructions below:
- load the module
$ module load hpcswtest

- run the testing program"
$ hpcswtest

- generate the report:
$ hpcswtest_report.py

- The report looks like following:
###############################################################ncbi-blast Tests###############################################################
ncbi/blast/2.11.0                       47856------------------------------------------------------------------------------------- passed  
Total Number of ncbi-blast Tests = 1 (Passed = 1 Failed = 0 Checked = 0 Running = 0)
############################################################ncbi-sratoolkit Tests#############################################################
ncbi/sratoolkit/2.11.0                  47857------------------------------------------------------------------------------------- passed  
ncbi/sratoolkit/2.11.3                  47858------------------------------------------------------------------------------------- passed  

