# Description: Editing Commands in Vim

### Note
* None

### Insert, Append and Replace Commands
```
# Insert Commands
i                       # Insert before cursor.
I                       # Insert before line (Capital I).

o                       # Open a new line after the current line.
O                       # Open a new line before the current line.

# Append Commands
a                       # Append after cursor.
A                       # Append after line.

# Replace Commands
r                       # Replace one character.
R                       # Replace many characters.
```

### Change Texts Commands
* The letter c is always combined with a motion command for changing texts.
```
c0                      # Change to the beginning of line.
c$                      # Change to the end of line.
C                       # Same as above.

cw                      # Change to the end of a word.
c2b                     # Change till back two words.

cc                      # Change an entire line.
S                       # Same as above.
```

### Delete Texts Commands
* The letter d is always combined with a motion command for deleting texts.
```
x                       # Delete current character under the cursor.
nx                      # Delete n characters starting with the current character under the cursor.

X                       # Delete 1 character to the left of the cursor.
nX                      # Delete n characters to the left of the cursor.

d0                      # Delete all characters from the cursor to the beginning of the line.
d$                      # Delete all characters from the cursor to the end of the line.
D                       # Same as above.

dd                      # Delete the current line.
:d                      # Same as above.

dw                      # Delete a word.
ndw                     # Delete the next n words starting with the current line.
ndb                     # Delete the previous n words starting with the current word.
ndd                     # Delete the next n lines beginning with the current word.
:n,md                   # Delete lines n through m.
```

### Cool Tricks
* None

### TODO
* None
