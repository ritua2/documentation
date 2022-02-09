To load the proj coordinate transformation software module migrate to a compute node,
then load the module with the command:

     module load proj

Once you've loaded the module you can access it with the 'proj' command on the command line.

TEST: To do a simple test of the package perform the command:

echo 55.2 12.2 | proj +proj=merc +lat_ts=56.5 +ellps=GRS80

The expected output should be:

3399483.80	752085.60
