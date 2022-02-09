These steps were used to test jpeglib:

1.  Download the file jpeglib-examples.tgz and extract it in your Arc work directory.

2.  module load jpeglib/9d

3.  cd into the "examples" directory

4.  Compile, verify & run test.c
    $ gcc -L/apps/jpeglib/9d/lib -ljpeg -o test test.c

    $ ldd test
        linux-vdso.so.1 =>  (0x00007ffdd3f54000)
        libjpeg.so.9 => /apps/jpeglib/9d/lib/libjpeg.so.9 (0x00007f6292a75000)
        libc.so.6 => /lib64/libc.so.6 (0x00007f62926a7000)
        /lib64/ld-linux-x86-64.so.2 (0x00007f6292caf000)

    $ ./test                                  (no output is provided - it just calls a function from jpeglib.h)

5.  Compile, verify & run example.c
    $ gcc -L/apps/jpeglib/9d/lib -ljpeg -o example example.c

    $ ldd example
        linux-vdso.so.1 =>  (0x00007ffdd93e7000)
        libjpeg.so.9 => /apps/jpeglib/9d/lib/libjpeg.so.9 (0x00007f8e989f8000)
        libc.so.6 => /lib64/libc.so.6 (0x00007f8e9862a000)
        /lib64/ld-linux-x86-64.so.2 (0x00007f8e98c32000)

    $ date; ./example                          (reads input.jpg and outputs foo.jpg)
    Thu Nov  4 18:11:24 CDT 2021
    $ ls -laF foo.jpg
    -rw-rw---- 1 ftk939 arcadmins 64323 Nov  4 18:11 foo.jpg

6.  Compile, verify & run memjpeg.c
    $ gcc -L/apps/jpeglib/9d/lib -ljpeg -o memjpeg memjpeg.c

    $ ldd memjpeg
        linux-vdso.so.1 =>  (0x00007ffe0e6d5000)
        libjpeg.so.9 => /apps/jpeglib/9d/lib/libjpeg.so.9 (0x00007f2f49bc8000)
        libc.so.6 => /lib64/libc.so.6 (0x00007f2f497fa000)
        /lib64/ld-linux-x86-64.so.2 (0x00007f2f49e02000)

    $ date; ./memjpeg sample1.jpg               (output file = output.ppm)
    Thu Nov  4 18:28:56 CDT 2021
    ./memjpeg[14154]: Input: Read 286452/286452 bytes
     ./memjpeg[14154]: Proc: Create Decompress struct
    ./memjpeg[14154]: Proc: Set memory buffer as source
    ./memjpeg[14154]: Proc: Read the JPEG header
    ./memjpeg[14154]: Proc: Initiate JPEG decompression
    ./memjpeg[14154]: Proc: Image is 619 by 1168 with 3 components
    ./memjpeg[14154]: Proc: Start reading scanlines
    ./memjpeg[14154]: Proc: Done reading scanlines
    ./memjpeg[14154]: End of decompression
    $ ls -laF output.ppm
    -rw-rw---- 1 ftk939 arcadmins 2168992 Nov  4 18:28 output.ppm
    $
  7. Simply run cjpegto compress a gif file to a jpg file:
    $ cjpeg -outfile test.jpg test.gif
    
 That's it!
