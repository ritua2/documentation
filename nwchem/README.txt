To use the nwchem module you must load migrate to a compute node, then load the module via the command:

   module load nwchem

When you load it the environment variables are all set. To run a simple test you can run the simple mathanol test
in the methanol.nw file.

Change directory into the same directory with the methanol.nw file and run the command:

nwchem methanol.nw

The output should be what is contained in the attached mathanol.out file though some of the timing values will be different.
