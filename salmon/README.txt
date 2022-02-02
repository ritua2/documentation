To use the salmon quantifier program migrate to a compute node then load the module using the
command:

	module load salmon

Once salmon is in your path you can run the command. To run a simple test of the program you
can do the command:

    salmon quant -t /apps/salmon/1.5.2/sample_data/transcripts.fasta -l A -a /apps/salmon/1.5.2/sample_data/sample_alignments.bam -o salmon_quant

This will do a salmon count on some test data and create a directory called 'salmon_quant' which contains
a log and an output file called quant.sf with counts in it.
