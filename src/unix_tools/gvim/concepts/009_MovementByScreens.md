# Description: Movements by Screens in Vim
------------------------------------------

### Movements within a screen.
```
H           # Move to the top of the screen.
M           # Move to the middle of the screen.
L           # Move to the bottom of the screen.

nH          # Move to nth line from the top of the screen.
nL          # Move to the nth line from the bottom of the screen.
```

### Scroll screen.
```
CTRL-f      # Scroll forward/down 1 full screen.
CTRL-b      # Scroll screen backward/up 1 full screen.

CTRL-d      # Scroll down/forward half a screen.
CTRL-u      # Scroll screen up/backward half a screen.

CTRL-e      # Scroll screen up 1 line.
CTRL-y      # Scroll screen down 1 line.
```

### Reposition the screen.
```
z<Enter>    # Reposition the screen by making the current line as the top line on the screen.
z.          # Reposition the screen by making the current line as the middle line on the screen.
z-          # Reposition the screen by making the current line as the bottom line on the screen.

nz<Enter>   # Reposition the screen by making the line n as the top line on the screen.
nz.         # Reposition the screen by making the line n as the middle line on the screen.
nz-         # Make the line n as the bottom line on the screen.
```

### Redraw screen.
```
CTRL-I
```
