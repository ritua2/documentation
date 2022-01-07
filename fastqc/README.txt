To test fastqc:

Log onto via the ondemand portal (portal.arc.utsa.edu) or with X11 forwarding enabled.

Connect to a compute node.

Load the fastqc module with:
     module load fastqc

Start the fastqc GUI on the command line with the fastqc command:
      fastqc

If you get the error, "Initial heap size set to a larger value than the max heap size" then set the environment variables:

   export JAVA_TOOL_OPTIONS="-Xms2G -Xmx4G"
   export _JAVA_OPTIONS="-Xms2G -Xmx4G"

You can set the memory limits so long as the Xmx value is larger than the Xms value.


The GUI will open, click on 'File' then open the attached small.fastq file (or any valid fastq file).

You will be presented with a list of parsed results on the left sidebar that you can browse for information parsed from the data file.

You can save an HTML report of the output by going to File -> Save Report and selecting a save location.

