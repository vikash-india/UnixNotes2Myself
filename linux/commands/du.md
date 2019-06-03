# Description: The du Command

### Notes
*  The du command or the Disk Usage command is used to estimate file space usage.

### Common Examples
```shell
du -chs *
du -chs /home/dilbert
```

### Examples With Details
```shell
du  /home/dilbert                       # Find the disk usage of /home/dilbert directory and its sub directories.
du -h /home/dilbert                     # Use -h flag to get sizes in 'Human Readable Format' ie Bytes, KB, MB, GB etc.
du -hs /home/dilbert                    # Use -s flag to get the summary or total disk usage size of an directory.
du -ah /home/dilbert                    # Using -a flag to display disk usage of all the files and directories.
 
sudo du -hs *                           # Get the summary of all files in the current directory.
du -ch /home/dilbert                    # Use the -c flag to get a grand total usage disk space as the last line.

du -ah --exclude="*.txt" /home/dilbert  # Exclude the '.txt' files while calculating the total size of diretory.
du -ha --time /home/dilbert             # Use --time flag to display the disk usage based on modification of time.

du -k /home/dilbert                     # Get disk usage of a directory tree with its subtress in Kilobytes block.
du -m /home/dilbert                     # Get disk usage of a directory tree with its subtress in Megabytes block.
du -g /home/dilbert                     # Get disk usage of a directory tree with its subtress in Gigabytes block.
```

### Cool Tricks
* None

### TODO
* None
