To load the mariadb module perform the following command:

   module load maridb/<version number>

TEST: To test the libraries and headers in your path compile the following program
in this directory with the following command:

   gcc mariadb_test.c -o mariadb_test $(mysql_config --libs)

When you run the mariadb_test program it should print the mariadb version.
The output shoudl print the client version of the package:

    MySQL client version: 3.3.0

