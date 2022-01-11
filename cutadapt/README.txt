To run cutadapt log into a compute node, then load the module via:

module load cutadapt

After you load it you can use the accompanying files to test. The input file is
small.fastq, it should product the output file called output.fastq

cutadapt -a CGAA -o output.fastq small.fastq


