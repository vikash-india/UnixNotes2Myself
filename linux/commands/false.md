# Description: The false Command

### Notes
* The false command does nothing, unsuccessfully.
* Some shell have its own version of false, which usually supersedes the following version.

### Common Examples
```shell
false
```

### Examples With Details
```shell
false                   # Exit with a status code indicating failure. echo $? after this command will return 1.
/bin/false --version    # Display version information and exit.
/bin/false --help       # Display help info and exit
```

### Cool Tricks
* None

### TODO
* None
