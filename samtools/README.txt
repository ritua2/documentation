To use the samtools programs migrate to a compute node then load the module via the command:

   module load samtools

To test it you can perform the following commands on the attached sam file named toy.sam
whcih comes from the samtools examples.

  samtools view -S -b toy.sam > toy.bam

After you convert the sam to a bam, you can view the contents to verify via this command:

  samtools view toy.bam

The output should match what is contained in the attached toy.out file.

