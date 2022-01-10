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

Test cell count:

To run a test cell count against data libraries installed on ARC just perform this command:

cellranger count --id=run_count_1kpbmcs --fastqs=/apps/cellranger/data/cellranger-datasets/samples/pbmc_1k_v3_fastqs --sample=pbmc_1k_v3 --transcriptome=/apps/cellranger/data/cellranger-datasets/refdata-cellranger-GRCh38-3.0.0/

After it runs you will have a directory called

run_count_1kpbmcs

these files in the execution directory.

_cmdline
_filelist
_finalstate
_invocation
_jobmode
_log
_mrosource
outs
_perf
run_count_1kpbmcs.mri.tgz
SC_RNA_COUNTER_CS
_sitecheck
_tags
_timestamp
_uuid
_vdrkill
_versions

You can check the run_count_1kpbmcs/_log file for 'Pipestance completed successfully!' to see that it finished running.

