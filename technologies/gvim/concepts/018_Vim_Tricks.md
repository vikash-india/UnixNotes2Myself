# Description: Vim Tricks

### Note
* None

### File Operations
```
:e file                 # Edit file.
:e!                     # Refresh file from the version on the disk.

# Navigate File Buffers
:n                      # Go to next file.
:p                      # Go to previous file.
```

### Movements
```
:line_number            # Move to a specific line in the file.
:4                      # Go to the 4th line.

:$                      # Go to the last line.
$0                      # Go to the first line.

3fe                     # Move the cursor forward to the 3rd occurence of the letter e.
```

### Editing - Insert Text
```
:r file                 # Reads file and inserts its text after the current line in the current file.
:nr file                # Reads file and inserts its content after the line n in the current file.

CTRL-i or TAB           # While inserting, inserts one shift width.
CTRL-v Control-Char     # Inserts control-characters by ignoring special meaning of control-char. Eg. Used for inserting 
                        # Ctrl-M, ESC etc.
                        
5i*<ESC>                # Insert *****
```

### Editing - Change/Modify/Replace Text
* The change command is a deletion command that leaves the editor in the insert mode. It is performed by typing c 
  followed by a motion. Eg. cw changes a word.
```
C                       # Change from the current cursor to the end of the line.

cwtext                  # Change the current word to text until ESC is pressed.

stext                   # Substitute text for the current character until ESC is pressed.
Ctext                   # Change from current cursor position to end of the current line to text until ESC is pressed.

cMotion_Command         # Change from current cursor position till the Motion_Command to text until ESC is pressed.

<< or >>                # Shifts the current line left or right respectively by one tab (Shift width).
n<< or n>>              # Shifts n lines left or right respectively by one tab (Shift width).

<Motion_Command         # Use with Motion Command to shift multiple lines left by one tab (Shift Width).
>Motion_Command         # Use with Motion Command to shift multiple lines right by one tab (Shift Width).
```

### Editing - Copy or Yank Text
* Almost all yank commands are performed by typing y followed by a motion command. Eg. y$ yanks to the end of the line.
```
yy                      # Yank the current line and keeps it in buffer. Press p put the text from buffer into the file.
:y                      # Same as above. Yank the current line.

nyy or nY               # Copy N lines into the buffer where N is the number of lines.

y<Motion-Commands>      # Copy everything from the cursor to the <Motion-Commands>
yG                      # Copy from the current cursor position to the end of the file.
y4                      # Copy from the current cursor position to the end of the fourth sentence.
"(a-z)nyy               # Copy n lines into a named buffer a through z. Omitting n works on the current line.
```

### Editing - Paste or Put Text
```
p                       # Put text from the buffer after the position or after the line.
P                       # Put text from the buffer before the poition or before the line.
(a-z)p or (a-z)P        # Paste text from a named buffer a through z after or before the current line.
```

### Buffers
```

```

### Markers
```

```

### Pattern Searches
```
*                       # Search for the word under the cursor in Forward direction. 
#                       # Search for the word under the cursor in Backward direction.
```

### Pattern Substitutions
```
:%s/./&/g               # Count the number of characters in the file.
:%s/pattern//gn         # Count the number of patterns instead of changing the buffer.

:'a,'bs/pattern/new/g   # Substitute 'pattern' with 'new' between mark a and mark b globally.

:v//d                   # Remove all lines except the searched pattern.
```

### Regular Expressions
```
.*                      # Matches everything including the empty line.

# Character Class
\\                      # Escapes the \ character.
[A-Z]                   # Set of characters from capital A to capital Z.
[a-z]                   # Set of characters from lowercase a to lowercase z.
[0-9]                   # Set of characters from 0 to 9.
[./=+]                  # Set of characters . (dot), / (slash), =, and +.
[-A-F]                  # Set of characters from capital A to capital F and the dash. Dashes must be specified first.
[0-9 A-Z]               # Set of characters containing all capital letters and digits and a space.
[A-Z][a-zA-Z]           # Set of characters with first character from capital A to capital Z and the second character 
                        # containing all letters
[a-z]{m}                # m occurances of the set from lowercase a to lowercase z.
[a-z]{m,n}              # At least m occurances, but maximum n occurances of the set from lowercase a to lowercase z.

[^.]$                   # Does not have . at the end.
[^,],                   # Match everything till comma in the string 'xxx, yyyy'.

```

### Non-Greedy Searches
```
^.\{-}\t                # Non-Greedy Search for \t. The \{n,m} mataches n to m. 
                        # Use \{n} for exact n. 
                        # Use \{,m} for 0 to m. 
                        # Use \{n,} for n or more. 
                        # Use \{-} for 0 or more of prededing atoms. 
                        # Use \{-n,m} for 1 or more.
                        # Use \{-n,} for at least or more of preceding atoms.
                        # Use \{-,m} for 1 or more of preceding atoms.
```

### Search Interactively and Then Replace
```
/pattern                # Search for pattern.
csubstitute ESC         # Change to substitute.
n                       # Repeat search.
n                       # Repeat search, skip a change.
.                       # Repeat change (if appropriate).
```

### Abbreviations
```

```

### Key Mappings
```

```

### Unix Commands
```
:sh                     # Temporarily return to Unix shell prompt. Type 'exit' in the shell prompt to return to Vim.

:!pwd                   # Execute the pwd unix command, then returns to Vim.
!!pwd                   # Replace current line with the output from the unix command 'pwd'. Note the abence of colon(:).
!!program               # Replace current line with the output from the command 'program'. Note the abence of colon(:).

:r !ls -l               # Read output of command into buffer.

:g/str/cmd              # Runs cmd on all lines that contain str
:v/str/cmd              # Executes cmd on all the lines that do NOT match str
```

### Macros
```

```

### Transpose or Swap Characters or Words
```
xp                      # Transpose or swap current character with the NEXT character.
Xp                      # Transpose or swap current character with the PREVIOUS character.
dwwP                    # Transpose or swap current word with the next WORD.
dwbP                    # Transpose or swaps current word with the PREVIOUS word.
ddp                     # Transpose or swap current line with the next LINE.
ddP                     # Transpose or swaps current line with the PREVIOUS line.
```

### Open New Lines
```
O                       # Create an empty line ABOVE the current line.
o                       # Create an empty line BELOW the current line.
```

### Tab Movements
```
gt                      # Go to next tab.
gT                      # Go to previous tab.
1gt                     # Go to First tab
[N]gt                   # Go to Nth tab.
[n]gT                   # Go BACK N tabs
```

### Uppercase and Lowercase
```
~                       # Change the case of the character (Uppercase or Lowercase) under the cursor.
g~~                     # Change case of all characters on the current line.

vEU                     # Switch word to uppercase.
vE~                     # Modify the case of the word.

Vu                      # Lowercase all characters on the current line.
VU                      # Uppercase all characters on the current line.

:s/\([a-z]\)/\u\1/      # Capitalize the first character on the current line to uppercase.
:s/\([a-z]\)/\u\1/g     # Same as above. Adding g at the end converts all chars on the current line to upper case.

:s/\<[a-z]/\u&/g        # Capitalize the first character of all words on the current line.
:s/\<[a-z]/\l&/g        # Use \l instead of \u to the first character of all words on the current line to lowercase.

:%s/\([a-z]\)/\u\1/     # Capitalize the first character on every line to uppercase.
:%s/\([a-z]\)/\u\1/g    # Same as above. Adding g at the end converts all chars on the current line to upper case.

ggguG                   # Set all the characters in the current file to lowercase.
ggguG                   # Set all the characters in the current file to lowercase.

:%s/.*/\u&              # Sets first letter of each line to uppercase. & matches the whole matched pattern.
:%s/.*/\u\0             # Same as above. \0 (just like &) matches the whole matched pattern.
```

### Sort
```
:sort                   # Sort every line in the buffer using ASCII sorting.
:%sort                  # Same as above. Sort every line in the buffer using ASCII sorting.
:sort n                 # Sort every line in buffer using NUMERICAL sorting.
:1,5sort                # Sort lines 1 to 5 using ASCII sorting.
:2,$sort                # Use 2,$ to sort line 2 till end using ASCII sorting.
:%sort u                # Sort and remove duplicates. VIM remove duplicates by sorting. The following command will sort 
                        # all lines and remove duplicates (keeping unique lines). 

:sort /.*\%2v/          # Sort based on 2nd Columns. Sorting on 2nd Virtual column after ignoring all the spaces and 
                        # tabs. The 'virtual' specification is the absolute column number, which treats spaces and tabs 
                        # as a single character. In other words, it does NOT count tabs as 8 spaces (or whatever the 
                        # tab settings are.

:%!sort                 # Sort using external Unix sort utility. Note ! after %.
:%!sort -M              # Sort using external Unix sort utility respecting Month. Respecting month means 
                        # January < Februrary etc.
```

### Line Number Information
```
:.=                     # Show current line number.
:=                      # Show total number of lines in the file.

CTRL-G                  # Show the filename, current line number, total number of lines in file, and % of file location.
:l                      # Show tab (^I), backslash (\), backspace (^H), newline ($), bell (^G), form feed (^L^) on the 
                        # current line.
```

### Delete 
```
D                       # Delete from the cursor position to the end of the current line.
C                       # Delete from the cursor position to the end of the current line and go in INSERT mode.

5dw                     # Delete 5 words.

Ndd                     # Delete N lines into the buffer where N is the number of lines.
:10,20d                 # Delete lines 10 to 20 (both inclusive).
:'a,'bd                 # Delete lines between marks a and mark b (both inclusive).
:g/^$/d                 # Delete all empty lines.

:delmarks!              # Delete all marks. It will not delete automatic marks created by VIM.
:delmarks a,b,c         # Delete marks a, b and c.

:g/pattern/d            # Delete all lines containing 'pattern'.
:g!/pattern/d           # Delete all lines NOT matching the 'pattern'.
:v/pattern/d            # Delete all lines which does not contain 'pattern'. The g! is equivalent to v.

:%s/^\(.*\)\n\1$/\1/    # Delete lines appearing twice in a file. [TODO] Fix it. This does not delete all duplicates.


d<Motion-Commands>      # Delete text from the current position till the motion command.
dG                      # Delete from the current position to the end of the file.
d4                      # Delete to the end of the fourth sentence.
"(a-z)ndd               # Delete n lines into a named buffer a through z. Omitting n works on the current line.
"np                     # Retrieve the last nth delete. Last 9 deletes are kept in a buffer.
"1pu.u. u.              # Scroll through the delete buffer until the desired delete is retrieved.
```

### Session
```
:mks sessionname        # Save the current session.
:mks! sessionname       # Force save the current session.
vim -S sessionname      # Load a session.
```

### Syntax Highlighting
```
:set syntax=perl        # Force syntax highlighting.
:syntax on              # Turn on syntax highlighting.
:syntax off             # Turn off syntax highlighting.
:set filetype=sql       # Force the filetype for syntax highlighting.
```

### Increment or Decrement Numbers 
```
CTRL-x                  # Decrement the number under cursor.
CTRL-a                  # Increment the number under cursor.

nCTRL-X                 # nCTRL-X is the general form is where n is the number to be subtracted.
5CTRL-X                 # Decrement the number under cursor by 5. 
```

### File Explorer
```
:Sex                    # Split window and open integrated file explorer.
:browse e               # Graphical file explorer.
```

### Line Breaks
```
J                       # Deleting a line break between 2 lines or JOIN 2 lines together.
nJ                      # Joins the next n lines together. Omitting n joins the beginning of the next line to the end of 
                        # the current line.
```

### Help
```
:help                   # Show Vim documentation.
:help help              # Show help about help.
:help ab                # Show help for abbreivate command.

# Interesting Help Commands
:help!                  # Don't panic. 
:help 42                # Show the following text...
                        # What is the meaning of life, the universe and everything?  *42*
                        # Douglas Adams, the only person who knew what this question really was about is
                        # now dead, unfortunately.  So now you might wonder what the meaning of death
                        # is...
:help quotes            # Show interesting quotes about VIM.
:help holy-grail        # Show You found it, Arthur!
```

### Format XML/HTML Files in Vim
```
:set filetype=xml
:filetype indent on
gg=G

# Explanation of gg=G
gg                      # Go to the start of the current file.
=                       # Indent.
G                       # Go to the end of the current file. Hence gg=G to indent entire file.
```

### Highlight Duplicate Lines
* Source: [Stack Overflow](http://stackoverflow.com/questions/1268032/marking-duplicate-lines)
```
g/^\(.*\)\n\ze\%(.*\n\)*\1$/

# Explanation
^\(.*\)\n               # A full line.
\ze                     # End of match - Positive lookahead to verify the rest of the pattern, but don't consume the  
                        # matched text.
\%(.*\n\)*              # Any number of full lines.
\1$                     # A full line repeat of the matched full line.
```

### Convert Date in Format DD/MM/YYYY to Format YYYY-MM-DD
``` 
# Format Date from DD/MM/YYYY to YYYY-MM-DD
%s/^\(..\)\/\(..\)\/\(....\)\t/\3-\2-\1,/g
```

### Ranges
* Ranges can may precede most colon (:) commands and executes the colon command on a set of lines as specified in the 
  range. Eg. `3,7d` would delete lines 3-7.
* Ranges are commonly combined with the :s command to perform a pattern substitution on several lines. Eg. 
  `:.,$s/pattern/string/g` to make a replacement from the current line to the end of the file.
```
:n,m                    # Range containing lines n to line m.
:.                      # Range containing the current line.
:$                      # Range containing the last line.
:'c                     # Range containing the marker c.
:%                      # Range containing all lines in the current file.
:g/pattern/             # Range containing all lines that contain the pattern.
```

### Global Clipboard
```
"+<Yank-Commands>       # This is the general form to copy or yank text to OS clipboard. 
"+<Delete-Commands>     # This is the general form to delete text to OS clipboard. 
"+yy                    # Copy the current line to OS clipboard. 
CTRL-r"+                # Paste from the global clipboard into Vim command line.
CTRL-r"                 # Paste from default register into Vim command line.
```

### Undo and Redo
```
u                       # Undo last change. When u is used in combination with . can allow multiple levels of undo in VIM
U                       # Undo all changes to the current line
```

### Vim Settings
```
:set number             # Show line numbers.
:set nonumber           # Do NOT show line numbers.
```

### Miscellaneous
```
@@                      # Repeat previous @ command.
:set rightleft          # Type from right to left.
:so %                   # Reload .vimrc without exiting VIM. Here so is short for :source and % for the current file.
:reg                    # Show the content of all registers. The word reg is short for registers.
%                       # Search to the beginning of corresponding bracket ( ) [ ] or { }.

.                       # Repeat last command using a period (.). It's a simple macro.
;                       # Repeat last f F t or T search command.

:g/^/m0                 # Reverse all lines in a file. 
:'t+1,.g/^/m            # Reverse line order. In :g/^/m 0, the 't reverses the line within the range marked as t and the 
                        # current position.

>'a                     # Indent > or < with motion keys  indents from current cursor position till markes locations a
>> or <<                # Indent the current line.
==                      # Fix line indent 

'.                      # Jump back to last edited line. Single quotes followed by a period.
g;                      # Jump back to last edited POSITION. The letter g followed by a semicolon.

:N or :E                # Opens up a new split-screen window in Vim. Use ^w to switch between the windows
```

### TODO
* :split and :hsplit
* :next and :previous
