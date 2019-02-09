# Description: Movements by Line Numbers in Vim
-----------------------------------------------

### Movement to NEXT or PREVIOUS lines.
```
+           # Move to the first non-blank character in the next line.
-           # Move to the first non-blank character in the previous line.
```

### Movement to FIRST or LAST lines.
```
1G          # Move to the first non-blank character in the first line of the file.
gg          # Same as above.

G           # Move to the first non-blank character in the last line of the file.
```

### Movements by LINE NUMBERS.
```
nG          # Move to the first non-blank character in the nth line of the file.
:n

:0          # Go to the first line.
:1          # Go to the first line.
:$          # Go to the last line.
:+2         # Go to 2 lines below the current line.
:-2         # Go to 2 lines above the current line.
```
