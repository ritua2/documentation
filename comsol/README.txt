comsol is an application with GUI. Following the steps to test the app:
log onto Arc, make sure with -X 
ssh -X abc123@arc.utsa.edu
log onto a computer node, make sure with --x11:
srun --x11 -p compute1  -n 20 -N 1 -t 8:00:00  --pty bash
load the module:
module load comsol56
download the sample file:
wget https://www.comsol.com/model/download/730931/cylinder_flow.mph
launch the app:
comsol&
File->Open and nevigate to the directory where cylinder_flow.mph is save
