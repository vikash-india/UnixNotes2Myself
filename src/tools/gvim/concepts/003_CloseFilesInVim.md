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
