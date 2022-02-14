bcl2fastq2 is proprietary free software from illumia.
It's used for extracting fastq files from a BCL (Binary base call) file from hiseq and miseq machines.

A guide is available here https://support.illumina.com/content/dam/illumina-support/documents/documentation/software_documentation/bcl2fastq/bcl2fastq2-v2-20-software-guide-15051736-03.pdf

To use the installed module on the cluster grab a compute node.
Load the module with the following command:

     module load bcl2fastq2/2.20

Call the command on a bcl file like this:
     bcl2fastq <BCL file>

Your output will be a directory with sorted reads.

