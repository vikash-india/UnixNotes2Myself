# Description: The free Command

### Notes
* The free command displays amount of free and used memory in the system.

### Common Examples
```shell
free -g
free -l
```

### Examples with details
```shell
free            # Check used and available space of physical memory and swap memory in KB.
free -b         # Use -b option to display the size of memory in Bytes.
free -k         # Use -k option to display the size of memory in (KB) Kilobytes.
free -m         # Use -m option to display the size of memory in (MB) Megabytes.
free -g         # Use -g option to display the size of the memory in GB(Gigabytes).

free -t         # Use -t option to  list the total line at the end.
free -o         # By default the free command display “buffer adjusted” line. Use -o option to disable this line.
free -s 5       # Use -s option with number to update free command at regular intervals of 5 seconds.

free -l         # Use -l option to display detailed high and low memory size statistics.
```

### Cool Tricks
* None

### TODO
* None
