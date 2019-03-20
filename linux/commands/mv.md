# Description: The mv Command

### Notes
* The mv command moves or renames files.

### Common Examples
```shell
mv source destination
mv path/to/source path/to/destination
```

### Examples With Details
```shell
mv filename1 filename2      # Renames file filename1 to filename2.
mv filename1 /path/to/dir1  # Moves file filename1 to /path/to/dir1. Either absolute or relative path can be used.
mv -v filename1 filename2   # Verbose output.
mv -i filename1 filename2   # Warn if filename2 exists.
mv -u filename1 filename5   # Moves or renames only when the SOURCE ie filename1 is newer than the destination file
                            # filename5 or when the destination file is missing.
```

### Cool Tricks
* Rename all directories/files at one go
```shell
for i in *; do echo mv \"$i\" \"TEST-${i}\"; done       # Test the expression first
for i in *; do echo mv \"$i\" \"TEST-${i}\"; done | sh  # Pipe it to sh
```

### TODO
* None
