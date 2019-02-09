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
