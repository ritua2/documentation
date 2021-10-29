Get the example:
wget https://autodock.scripps.edu/wp-content/uploads/sites/56/2021/10/autodocksuite-4.2.6-examples.tar.gz --no-check-certificate
tar xvfz autodocksuite-4.2.6-examples.tar.gz 
cd examples/dock_flexlig
module load autodock
run :
autodock4 -p 1dwd_1dwd.dpf -l 1dwd_1dwd.dlg


Or, submit a batch job with the job script test.ps 
