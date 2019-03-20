# Description: The dirname Command

### Notes
* The dirname command strips the last component from file name.
* Output each argument with its last non-slash component and trailing slashes removed.

### Common Examples
```shell
dirname relative/path/to/filename
dirname /absolute/path/to/filename
```

### Examples With Details
```shell
dirname filename                    # Outputs . for the current directory if argument does not have any /.
dirname /home/dilbert/work          # Outputs /home/dilbert.
dirname `pwd`                       # Outputs /home/dilbert when executed from /home/dilbert/work.
dirname /dir1/file1 /dir2/file2     # Multiple arguments can be given. Output is separated using newline.
dirname -z /dir1/file1 /dir2/file2  # Use -z switch to separate output with NUL rather than newline
```

### Cool Tricks
* None

### TODO
* None
