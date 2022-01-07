cellranger is a program that performs a set of workflows on various data types.
Online documentation is available here https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger

To use cellranger you must log into a compute node. 
Then to load the cellranger module perform the command.

     module load cellranger

or load a specific version with the version number:

   module load cellranger/6.1.2

When you load the module you'll get a prompt asking you to source a file that's been loaded in
an environment variable. Simple enter this command to source the file and you can use cellranger.

   . $cellrangerDotFile

