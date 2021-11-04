FSL is a comprehensive library of analysis tools for FMRI, MRI and DTI brain imaging data.
Log onto Arc and grab a compute node
Download the sample data:
$ wget https://dev1.soichi.us/tmp/t1.nii.gz
Load the fsl module:
$ module load fsl
To Launch the GUI:
$ fsl

Example to use fast program to segments a 3D image of the brain into different tissue types 
$ fast t1.nii.gz

Or use the test.ps job script to submit a batch job from a login node.
$ sbatch test.ps
