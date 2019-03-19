# Description: The head Command

### Notes
* The head Command outputs the first part of files.

### Common Examples
```shell
head path/to/filename
head -5 path/to/filename
```

### Examples with details
```shell
head                        # With no FILE, or when FILE is -, read the standard input.
head path/to/filename       # Print the first 10 lines of the file to standard output.
head filename1 filename2    # Print the first 10 lines of each FILE to standard output.
head -20 path/to/filename   # Print the first 20 lines instead of the first 10.
head -v path/to/filename    # Use -v switch to always print headers giving file names. By default, headers are NOT
                            # printed if argument has ONE file but ALWAYS PRINTED if the argument has MULTIPLE FILES.
head -q filename1 filename2 # Use -q switch to never print headers giving file names.By default, headers are NOT
                            # printed if argument has ONE file but ALWAYS PRINTED if the argument has MULTIPLE FILES.
```

### Cool Tricks
* None

### TODO
* None
