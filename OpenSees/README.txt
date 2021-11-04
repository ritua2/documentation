OpenSees is a software framework for simulating the response of structural and geotechnical systems subjected to earthquakes.
log onto Arc:
ssh -X abc123@arc.utsa.edu
cd to a proper working directory
copy the examples from the installation directry:
$ cp -r /apps/opensees/3.3.0/openmpi/source/OpenSees/EXAMPLES/ .
load the OpenSees module:
module load opensees

To Test the standard version:
cd DeveloperTestScripts and run following command:

OpenSees runAll.tcl
Or use the test.ps to submit a batch job on a login node:
sbatch test.ps
