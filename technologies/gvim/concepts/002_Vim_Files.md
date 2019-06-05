# Description: Open Files in Vim
--------------------------------

### Start a new instance of Vim.
```
vim
```

### Start a new instance of Vim and open a file.
```
vim filename
```

### Start Vim, open a file and place the cursor at line n.
```
vi +n filename

vi +10 filename
```

### Open a file in Vim and place the cursor on the last line of the file.
```
vi + filename
```

### Open a file in Vim and place the cursor on first occurrence of the pattern.
```
vi +/pattern filename
```

### Open multiple files, file1, file2 etc in Vim.
```
vi filename1 filename2 ...
```
#### Note:
- Use :n or :N to go to next or previous files.
- Use :rew to rewind from last to first file.

### Open the last saved version of a file after a crash.
```
vi -r filename
```
#### Note
- This command uses the hidden file .filename.swp to recover the content.






# Description: Close Files in Vim
---------------------------------

### Save the current file but don't exit Vim.
```
:w
```

### Save the current file overriding checks but don't exit.
```
:w!
```
#### Note
- This is useful in overwriting READ-ONLY files.

### Save the current buffer as filename but don't exit.
```
:w filename
```
####

### Save file overriding checks but don't exit.
```
:w! filename
```
#### Note
- This is useful in overwriting existing files.

### Saves and exit Vim
```
:wq
```

### Save and exit Vim.
```
:x
```
#### Note
- This is the shortest way to save and exit Vim.

### Saves and exit Vim.
```
ZZ
```

### Quit if no changes have been made to the current file.
```
:q
```

### Quit Vim without saving.
```
:q!
```

### Edit file discarding any unsaved changes.
```
:e!
```
#### Note:
- This is useful in refreshing file content from the disk.

### Save and continue to edit the current file.
```
:we!
```

### Save lines n through m to filename.
```
:n,mw filename
```

### Save lines n through m by appending to the end of a file.
```
:n,mw>>filename
```
