To run ncbi blast grab a compute node then load the module:

module load ncbi/blast

Blast allows genome comparisons against two files. To run with these examples
just use the blastn command with these arguments:

blastn -query sample3.fasta -subject sample1.fasta -out results.txt

The resulting hits will be in the results.txt file.

