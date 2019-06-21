# Description: File Operations in Vim

### Note
* None

### Starting Vim
```
vim                             # Start a new instance of Vim.
```

### Opening Files in Vim
```
vim filename                    # Start a new instance of Vim and open a file.

vi +n filename                  # Start Vim, open a file and place the cursor at line n.
vi + filename                   # Open a file in Vim and place the cursor on the last line of the file.
vi +/pattern filename           # Open a file in Vim and place the cursor on first occurrence of the pattern.

vi filename1 filename2 ...      # Open multiple files, file1, file2 etc in Vim.
                                # - Use :n or :N to go to next or previous files.
                                # - Use :rew to rewind from last to first file.

vi -r filename                  # Open the last saved version of a file after a crash.
                                # - This command uses the hidden file .filename.swp to recover the content.
```

### Closing Files in Vim
```
:w                              # Save the current file but don't exit Vim.

:w!                             # Save the current file overriding checks but don't exit.
                                # - This is useful in overwriting READ-ONLY files.

:w filename                     # Save the current buffer as filename but don't exit.
:w! filename                    # Save file overriding checks but don't exit.
                                # - This is useful in overwriting existing files.

:wq                             # Saves and exit Vim
:x                              # Save and exit Vim.
                                # - This is the shortest way to save and exit Vim.

ZZ                              # Saves and exit Vim.

:q                              # Quit if no changes have been made to the current file.
:q!                             # Quit Vim without saving.

:e!                             # Edit file discarding any unsaved changes.
                                # - This is useful in refreshing file content from the disk.
:we!                            # Save and continue to edit the current file.

:n,mw filename                  # Save lines n through m to filename.
:n,mw>>filename                 # Save lines n through m by appending to the end of a file.
```

### Cool Tricks
* None

### TODO
* None
