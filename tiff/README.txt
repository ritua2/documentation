down load a image file in tiff format.
$ wget https://people.math.sc.edu/Burkardt/data/tif/autumn.tif
$ module load tiff/4.3.0
- To test tiffinfo command:
$ tiffinfo autumn.tif
The output looks like:
TIFF Directory at offset 0x213218 (340e2)
  Image Width: 345 Image Length: 206
  Resolution: 72, 72
  Bits/Sample: 8
  Compression Scheme: None
  Photometric Interpretation: RGB color
  Orientation: row 0 top, col 0 lhs
  Samples/Pixel: 3
  Rows/Strip: 7
  Planar Configuration: single image plane

- To test tiffdump command:
$ tiffdump autumn.tif 
The output looks like following:
autumn.tif:
Magic: 0x4949 <little-endian> Version: 0x2a <ClassicTIFF>
Directory 0: offset 213218 (0x340e2) next 0 (0)
ImageWidth (256) SHORT (3) 1<345>
ImageLength (257) SHORT (3) 1<206>
BitsPerSample (258) SHORT (3) 3<8 8 8>
Compression (259) SHORT (3) 1<1>
Photometric (262) SHORT (3) 1<2>
StripOffsets (273) LONG (4) 30<8 7253 14498 21743 28988 36233 43478 50723 57968 65213 72458 79703 86948 94193 101438 108683 115928 123173 130418 137663 144908 152153 159398 166643 ...>
Orientation (274) SHORT (3) 1<1>
SamplesPerPixel (277) SHORT (3) 1<3>
RowsPerStrip (278) SHORT (3) 1<7>
StripByteCounts (279) LONG (4) 30<7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 7245 ...>
XResolution (282) RATIONAL (5) 1<72>
YResolution (283) RATIONAL (5) 1<72>
PlanarConfig (284) SHORT (3) 1<1>
