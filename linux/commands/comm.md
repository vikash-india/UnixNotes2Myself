# Description: The comm Command

### Notes
* The comm command compares two sorted files line by line.
* With no option, the comm command produces three-column output.
    - Column one contains lines unique to FILE1.
    - Column two contains lines unique to FILE2.
    - Column three contains lines common to both the files - FILE1 and FILE2.

### Common Examples
```shell
comm path/to/file_1 path/to/file_2
```

### Examples With Details
```shell
comm path/to/file_1 path/to/file_2          # Compare two sorted files line by line.
comm -1 file_a file_b                       # Suppress lines unique to file_a
comm -2 file_a file_b                       # Suppress lines unique to file_b
comm -3 file_a file_b                       # Suppress lines that appear in both files
```

### Cool Tricks
* None

### TODO
* None

### TODO
* None
