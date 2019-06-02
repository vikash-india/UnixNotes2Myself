# Description: The mktemp Command

### Notes
* The mktemp command is used to create a temporary file or directory.

### Common Examples
```shell
mktemp -u

mktemp
mktemp tempFileXXX

mktemp -d
mktemp -d tempDirXXX

mktemp -p ~Downloads/ tempFileXXX
mktemp -p ~Downloads/ -d tempDirXXX
```

### Examples With Details
```shell
# Create a file or directory in /tmp directory
mktemp                                  # A temporary FILE will get created in the /tmp/ folder.
mktemp -d                               # A temporary DIRECTORY will get created in the /tmp/ folder.

# Create a file or directory with custom name in the CURRENT directory
mktemp tempfileXXX                      # tempfileAWw. Use 3 or more X to create a temporary FILE with custom name. 
                                        # The XXXs will be replaced by random characters to keep the name unique.
                                        # The file will be created in CURRENT directory instead of /tmp.
mktemp -d tempdirXXX                    # Create a temporary directory with custom name in the CURRENT directory.
mktemp tempfileXXX --suffix=HTF         # tempfilecAWwHTF. Create a file with HTF suffix.

mktemp -p ~Downloads/                   # Create a file under ~/Downloads directory.
mktemp -p ~Downloads/ -d tempDirXXX     # Create a directory under ~/Downloads directory.

# Perform a dry run WITHOUT creating the actual file or directory
mktemp -u                               # Display the name of the file without creating the file.
```

### Cool Tricks
* None

### TODO
* None
