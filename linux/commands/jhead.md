# Description: The jhead Command

### Notes
* The jhead Command is a digicam JPEG Exif header manipulation tool.
* This is an external tool and needs to be installed using the command `sudo apt-get install jhead`.
* The jhead tool is used to display and manipulate data contained in the Exif header of JPEG images from digital
  cameras.  By default, jhead displays the more useful camera settings from the file in a user-friendly format.

### Common Examples
```shell
jhead -ft *.jpg
```

### Examples With Details
```shell
jhead DSC_8772.jpg      # Display exif info of the file DSC_8772.jpg
jhead DSC_88??.jpg      # Display exif info of all the files with names starting with DSC_88 and having any 2 characters
                        # after that and .jpg as the file extension.
jhead -ft *.jpg         # Sets the file's system time stamp to what is stored in the Exif header.
```

### Cool Tricks
* None

### TODO
* None
