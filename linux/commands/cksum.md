# Description: The cksum command

### Notes
* The cksum command is used to compute checksum and count the bytes in a file.

### Common Examples
```shell
cksum path/to/filename
```

### Examples with details
```shell
cksum path/to/filename  # Prints CRC checksum and the byte counts of the file filename.
cksum file1 file2       # Multiple files can be be given as an argument.
cksum --version         # Prints the version info.
```

### Cool Tricks
* None

### TODO
* Read more about CRC.
