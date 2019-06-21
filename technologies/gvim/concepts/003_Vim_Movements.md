# Description: Movement Commands in Vim

### Note
* Enter key can be used to go down 1 line.
* Backspace key can be used to go back 1 character.
* Arrow keys also work if there are mapped correctly. But arrow keys are way too slow on big files.

### Single Character Movement Commands
```
h                       # Move left 1 character.
j                       # Move down 1 line.
k                       # Move up 1 line.
l                       # Move right 1 character.
```

### Multiple Characters Movement Commands
* General syntax is `N<Motion Command>` where N is a numeric arguments to a single character movement.
* Any movement commands can be preceded by a number N to repeat the movement N times.
```
5h                      # Move left 5 characters.
100j                    # Move down 100 lines.
21k                     # Move up 21 lines.
7l                      # Move right 7 characters.
```

### Single Line Movement Commands
```
0                       # Move to the BEGINNING of a line.
|                       # Same as above.

$                       # Move to the END of a line.

^                       # Move to the first non-blank character on the current line.

n|                      # Move to the column n in the current line.
10|                     # Move to the column n in the current line.
```

### Multiple Lines Movement Commands
```
1G                      # Move to the first non-blank character in the FIRST line of the file.
gg                      # Same as above.

G                       # Move to the first non-blank character in the LAST line of the file.

+                       # Move to the first non-blank character in the next line.
-                       # Move to the first non-blank character in the previous line.

nG                      # Move to the first non-blank character in the nth line of the file.
:n                      # Same as above

:0                      # Go to the first line.
:1                      # Go to the first line.
:$                      # Go to the last line.
:+2                     # Go to 2 lines below the current line.
:-2                     # Go to 2 lines above the current line.
```

### Single Screen Movement Commands
* Movements within a screen.
```
H                       # Move to the top of the screen.
M                       # Move to the middle of the screen.
L                       # Move to the bottom of the screen.

nH                      # Move to nth line from the top of the screen.
nL                      # Move to the nth line from the bottom of the screen.
```

### Scroll Screen or Multiple Screen Movement Commands
```
CTRL-f                  # Scroll forward/down 1 full screen.
CTRL-b                  # Scroll screen backward/up 1 full screen.

CTRL-d                  # Scroll down/forward half a screen.
CTRL-u                  # Scroll screen up/backward half a screen.

CTRL-e                  # Scroll screen up 1 line.
CTRL-y                  # Scroll screen down 1 line.
```

### Reposition Screen Commands
```
z<Enter>                # Reposition the screen by making the current line as the top line on the screen.
z.                      # Reposition the screen by making the current line as the middle line on the screen.
z-                      # Reposition the screen by making the current line as the bottom line on the screen.

nz<Enter>               # Reposition the screen by making the line n as the top line on the screen.
nz.                     # Reposition the screen by making the line n as the middle line on the screen.
nz-                     # Make the line n as the bottom line on the screen.
```

### Redraw screen.
```
CTRL-I                  # Redraws screen
```

### Words Movements - Text Block Movement Commands
* A word is a set of alphanumeric characters or an underscore.
* Hyphen or period is considered as a new word for w, b or e.
* Hyphen or period is NOT considered a new word for W, B or E.
```
w                       # Move forward to the first character of the next word.
W                       # Move to the first character of the next blank delimited word.

b                       # Move to the first character of the previous word.
B                       # Move to the first character of the previous blank delimited word.

e                       # Move to the end character of the next word.
E                       # Move to the end character of the next blank delimited word.
```

### Sentences Movements - Text Block Movement Commands
*  A sentence ends with a period.
```
(                       # Move to the first character of the previous sentence.
)                       # Move to the first character of the next sentence.
```

### Paragraphs Movements - Text Block Movement Commands
* A paragraph is a carriage return on an empty line.
```
{                       # Move to the first character of the previous paragraph.
}                       # Move to the first character of the next paragraph.
```

### Sections Movements - Text Block Movement Commands
* Section commands are designed to work with nroff files by default.
* Nroff is a language like LaTeX or Markdown and used as a format for UNIX man pages.
```
[[                      # Move a section back.
]]                      # Move a section forward.
```

### Braces Movement Commands - Matching ( ), { } or [ ] 
```
%                       # Matches the opening or closing counterpart of the braces.
```

### Pattern Search Movement Commands - Current Line
```
fc                      # Move forward to the character c on the current line.
Fc                      # Move backward to the character c on the current line.

tc                      # Move BEFORE the NEXT occurrence of c in the current line.
Tc                      # Move AFTER the PREVIOUS occurrence of c in the current line.

;                       # Repeat previous find command in same direction.
,                       # Repeat previous find command in opposite direction.
```

### Pattern Search Movement Commands - Current File
* Use n to repeat the search in the same direction.
* Use N to repeat the search in the opposite direction.
* Use :set wrapscan to control whether search wraps.
* Use :set nowrapscan to control whether search does NOT wraps.
```
/pattern                # Search forward for the pattern in the current file.
?pattern                # Search backward for the pattern in the current file.

/<ENTER>                # Repeat search forward.
?<ENTER>                # Repeat search backward.
```

### Cool Tricks
* None

### TODO
* None
