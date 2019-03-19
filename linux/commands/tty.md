# Description: The tty Command

### Notes
* The tty command prints the file name of the terminal connected to standard input.

### Common Examples
```shell
tty
echo "System is going down for reboot!" > /dev/pts/7
```

### Examples with details
```shell
tty                         # Print the file name of the terminal connected to standard input. Eg /dev/pts/3.
echo "Hello" > /dev/pts/7   # Writing to this file ends up writing to the monitor. A superuser can write to any users
                            # terminal by writing to one such file.
tty --version               # Show version info.
```

### Cool Tricks
* None

### TODO
* None
