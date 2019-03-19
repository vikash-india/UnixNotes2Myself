# Description: The wc Command

### Notes
* The wc command prints newline, word, and byte counts for each file.

### Common Examples
```shell
wc -l /path/to/filename
wc - w /path/to/filename
wc - c /path/to/filename
```

### Examples with details
```shell
wc -c /path/to/filename            # Print the byte count.
wc -m /path/to/filename            # Print the character count.
wc -w /path/to/filename            # Print the word count.
wc -l /path/to/filename            # Print the newline count.
wc -L /path/to/filename            # Print the length of the longest line.
```

### Cool Tricks
* None

### TODO
* Explore wc -c for a wide character strings.
