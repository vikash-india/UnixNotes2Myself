# Description: The lsattr Command

### Notes
* The lsattr command lists file attributes on a Linux second extended file system.

### Common Examples
```shell
lsattr -aRV *
```

### Examples With Details
```shell
lsattr -R file_or_dir_name      # Recursively list attributes of directories and their contents.
lsattr -V file_or_dir_name      # Display the program version.
lsattr -a file_or_dir_name      # List all files in directories, including files that start with `.'.
lsattr -d file_or_dir_name      # List directories like other files, rather than listing their contents.
lsattr -v file_or_dir_name      # List the file's version/generation number.
```

### Cool Tricks
* None

### TODO
* None
