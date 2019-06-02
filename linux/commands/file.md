# Description: The file Command

### Notes
* The file command determines the file type of a file. 
* There are three sets of tests, performed in this order: filesystem tests, magic tests, and language tests.
* Any file that cannot be identified as having been written in any of the character sets listed above is simply said to 
  be “data”.
* It reports the file type in human readable format (Eg 'ASCII text') or MIME type (Eg 'text/plain; charset=us-ascii').
* The file name along with the file type will be printed to standard output.

### Common Examples
```shell
file sample.txt
file -i sample.txt
file -z sample.tar.gz
file sample.pdf image.gif
```

### Examples With Details
```shell
# View the human readable format
file sample.pdf             # sample.pdf: PDF document, version 1.6
file image.gif              # image.gif: GIF image data, version 89a, 640 x 480
file image.jpg              # image.jpg: JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length  
                            # 16, progressive, precision 8, 1280x960, frames 3  
file sample.deb             # sample.deb: Debian binary package (format 2.0)
file sample.pptx            # sample.pptx: Microsoft PowerPoint 2007+

# View the mime type of a file using -i options
file file.java              # file.java:  source, ASCII text, with very long lines
file -i file.java           # file.java: text/x-c; charset=us-ascii

# View compressed files without decompressing
file -z sample.tar.xz       # sample.tar.xz: POSIX tar archive (XZ compressed data)
file -iz sample.tar.xz      # sample.tar.gz: application/x-tar; charset=binary compressed-encoding=application/x-xz; 
                            # charset=binary
```

### Cool Tricks
* None

### TODO
* None
