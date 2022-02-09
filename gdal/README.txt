To use the gdal utilities and libraries migrate to a compute node and load the module
with the command:

     module load gdal


TEST: To test out the program you can run this simple info dump from an image.
Just run the command:


gdalinfo /apps/gdal/3.3.2/share/gdal/gdalicon.png


The command output should be:

Driver: PNG/Portable Network Graphics
Files: /apps/gdal/3.3.2/share/gdal/gdalicon.png
Size is 32, 32
Image Structure Metadata:
  INTERLEAVE=PIXEL
Corner Coordinates:
Upper Left  (    0.0,    0.0)
Lower Left  (    0.0,   32.0)
Upper Right (   32.0,    0.0)
Lower Right (   32.0,   32.0)
Center      (   16.0,   16.0)
Band 1 Block=32x1 Type=Byte, ColorInterp=Red
  Mask Flags: PER_DATASET ALPHA 
Band 2 Block=32x1 Type=Byte, ColorInterp=Green
  Mask Flags: PER_DATASET ALPHA 
Band 3 Block=32x1 Type=Byte, ColorInterp=Blue
  Mask Flags: PER_DATASET ALPHA 
Band 4 Block=32x1 Type=Byte, ColorInterp=Alpha
