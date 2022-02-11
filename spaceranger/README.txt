To use spaceranger you must migrate to a compute node and load the modules spaceranger and bcl2fastq
with the following command:

   module load spaceranger bcl2fastq

After you've done this you need to source the space ranger env with the command:

   . $spacerangerDotFile


TEST: to test spaceranger perform the command with existing datasets on arc:

      spaceranger mkfastq --id=tiny-bcl \
                     --run=/apps/cellranger/data/spaceranger-datasets/spaceranger-tiny-bcl-1.0.0\
                     --csv=/apps/cellranger/data/spaceranger-datasets/spaceranger-tiny-bcl-simple-1.0.0.csv


When the program has finished running it should produce a directory called tiny-bcl containing files and a
zip file named tiny-bcl.mri.tgz

To check if the run has completed successfully simple check the log file in:

tiny-bcl/_out

For the string:

Pipestance completed successfully!

To see that the run completed successfully.

