# Description: Executing Unix Commands in Vim
---------------------------------------------

### Execute Unix shell commands from Vim.
- Special character % specify the current file.
- Special character # specify the last edited file.

### Execute a single Unix command using the syntax `:!command`.
```
:!cd
:!date
:!ls

:! wc %
```

### Execute multiple Unix commands from Vim.
- Use CTRL-D to exit the shell mode.

```
:sh

# Followed by one or more Unix commands without the need for :!
cd
date
ls
```

### Read and execute Unix commands from a file.
- File should be a shell script

```
:so file
```

### Read the output of a Unix command using the syntax `:r! command`.
```
:r! date
:r! sort filename

# Execute and show the output of last Unix command.
```
:!!
```

### Mix file operations with Unix commands in Vim.
```
# Read the content from another file.
:r path/to/file

# Rename the current file to newfile.
:f newfile

# Send currently edited file to command as standard input and execute the command.
:w !command
```

### Apply motion commands to send text block to Unix command using the syntax `!Motion_Command Command`.
```
# Sort from current position to end of file and replace text with the sorted text.
!G sort
```
