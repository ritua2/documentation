To use the sratoolkit migrate to a compute node then load the module via the command:

   module load ncbi/sratoolkit


Once loaded the programs will be in your path.

TEST: To do a quick test of the SRA toolkit, perform this command on the given SRA file that counts the number of reads in the file. 

      fastq-dump -X 1 -Z /apps/ncbi/sratoolkit/data/SRR000001/SRR000001.sra | sed -n '2p' | awk '{ print length }'

The given output should be:

Read 1 spots for /apps/ncbi/sratoolkit/data/SRR000001/SRR000001.sra
Written 1 spots for /apps/ncbi/sratoolkit/data/SRR000001/SRR000001.sra
284


