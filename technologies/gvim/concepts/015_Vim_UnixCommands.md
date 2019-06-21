# Description: Unix Commands in Vim

### Note
* Unix shell commands can be executed from within Vim.

### Execute One Unix Command
* The general syntax is `:!command`.
* Special character % specify the current file.
* Special character # specify the last edited file.
```
:!cd                    # Change to home directory.
:!date                  # Print date
:!ls                    # List files and directories

:! wc %                 # Count lines, words and character in the current file.
```

### Execute Multiple Unix Commands
* Use CTRL-D to exit the shell mode.
```
:sh                     # Invoke shell

cd                      # Change to home directory. Followed by one or more Unix commands without the need for :!.
date                    # Print date
ls                      # List files and directories
```

### Read and Execute Unix Commands From a File.
* The `file` should be a shell script.
```
:so file
```

### Read the Output of a Unix Command 
* The general syntax is `:r! command`.
```
:r! date                # Get the output of the date command.
:r! sort filename       # Get the output after executing sort command on a file.

:!!                     # Execute and show the output of last Unix command.
```

### Combine Vim File Operation Commands with Unix Commands
```
:r path/to/file         # Read the content from another file.
:f newfile              # Rename the current file to newfile.
:w !command             # Send currently edited file to command as standard input and execute the command.
```

### Use Motion Commands to Send Text Block to Unix Commands
* The general syntax is `!Motion_Command Command`.
```
!G sort                 # Sort from current position to end of file and replace text with the sorted text.
```

### Cool Tricks
* None

### TODO
* None
