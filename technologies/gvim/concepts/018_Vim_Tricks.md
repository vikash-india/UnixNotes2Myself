# Description: Vim Tricks

### Note
* None

### File Operations
```
:e!                     # Refresh file from version on disk.

:n                      # Go to next file
:p                      # Go to previous file
:e file                 # Edit file
!!program               # Replace line with output from program
:.=                     # Shows current line number
:=                      # Shows number of lines in file
CTRL-G                  # Shows filename, current line number, total lines in file, and % of file location
l                       # Displays tab (^l) backslash (\) backspace (^H) newline ($) bell (^G) formfeed (^L^) of current line
```

### Movements
```

```

### Editing
```

```

### Buffers
```

```

### Markers
```

```

### Pattern Searches
```

```

### Pattern Substitutions
```
:%s/pattern//gn         # Count the number of patterns instead of changing the buffer.
:'a,'bs/pattern/new/g   # Substitute pattern with new between mark a and mark b globally.

:v//d                   # Remove all lines except the searched pattern.
```

### Abbreviations
```

```

### Key Mappings
```

```

### Unix Commands
```
:!pwd                   # Execute the pwd unix command, then returns to Vi.
!!pwd                   # Execute the pwd unix command and insert output in file.
:sh                     # Temporary returns to Unix    Type exit in shell prompt to return to vim.

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
~                       # Turn the character under cursor to Capital.
:s/\([a-z]\)/\u\1/      # Capitalize the first lowercase character on a line.
:s/[a-z]/\u&/           # Same as above. Adding g at the end converts all chars to upper case.
g~~                     # Change case of all characters on line.
:s/\<[a-z]/\u&/g        # Capitalize the first character of all words on a line.
:s/\<[a-z]/\l&/g        # Use \l instead of \u to convert to lowercase.

Vu                      # Lowercase line.
VU                      # Uppercase line.

ggguG                   # Set all text to lowercase.
:%s/.*/\u&              # Sets first letter of each line to uppercase.
```

### Sort
```
:sort                   # Sort every line in buffer (ASCII Sorting).
:%sort                  # Same as above. Sort every line in buffer (ASCII Sorting).
:sort n                 # Sort every line in buffer (Numerically).
:1,5sort                # Sort between 1 to 5 lines       Use 2,$ to sort from line 2 till end.
:%sort u                # Sort and remove duplicates      Note :[range] sort [n][u] [/.*\%2v/].
:sort /.*\%2v/          # Sort based on 2nd Columns     Sorting on 2nd Virtual column after ignoring all the spaces and tabs. The 'virtual' specification is the absolute column number, which treats spaces and tabs as a single character (in other words, it does NOT count tabs as 8 spaces (or whatever your tab settings are).
:%!sort                 # Sort using external Unix sort utility    Note ! after %.
:%!sort -M              # Sort using external Unix sort utility respecting Month    Respecting Month means January < Februrary etc.

```

### Delete 
```
D                       # Delete from Cursor position to the end of line.
:delmarks!              # Delete all marks      Does not delete automatic marks created by VIM.
:g/string/d             # Delete all lines containing “string”.
:v/string/d             # Delete all lines containing which didn't contain “string”.
C                       # Delete from cursor till end of line and go in Insert mode.
Ndd                     # Delete N lines into the buffer   N is the number of lines.
:delmarks a,b,c         # To delete marks a, b and c.


:10,20d                 # Delete lines 10 to 20 (both inclusive).
:'a,'bd                 # Delete lines between marks a and mark b (both inclusive).
:g/^$/d                 # Delete all empty lines.
:g/pattern/d            # Delete lines that contain pattern.
:%s/^\(.*\)\n\1$/\1/    # Delete lines which appears twice in a file      This does not delete all duplicates. Check this.
```

### Session
```
:mks sessionname        # Save session.
:mks! sessionname       # Force save session.
vim -S sessionname      # Load session.
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
```

### File Explorer
```
:Sex                    # Split window and open integrated file explorer.
:browse e               # Graphical file explorer.
```

### Line
```
J                       # Deleting a line break between 2 lines or JOIN 2 lines together.
```

### Help
```
:help!
:help 42
:help quotes
:help holy-grail
```

### Format XML/HTML Files in Vim
```
:set filetype=xml
:filetype indent on
gg=G

# Explanation of gg=G
gg                      # To go to the start of a file
=                       # To indent
G                       # To go to the end of the file. Hence gg=G to indent.
```

### Highlight Duplicate Lines
* Source: http://stackoverflow.com/questions/1268032/marking-duplicate-lines
```
# Highlight Duplicate Lines in a file
g/^\(.*\)\n\ze\%(.*\n\)*\1$/ 
```

### Convert Date in DD/MM/YYYY to YYYY-MM-DD
``` 
# Format Date from DD/MM/YYYY to YYYY-MM-DD
%s/^\(..\)\/\(..\)\/\(....\)\t/\3-\2-\1,/g           
```

### Ranges
```
"1.                     # Ranges may precede most ""colon"" commands and executes the colon command on a set of lines as specified in the range. E.g. 3,7d would delete lines 3-7.
2.                      # Ranges are commonly combined with the :s command to perform a replacement on several lines. E.g. :.,$s/pattern/string/g to make a replacement from the current line to the end of the file."
:n,m                    # Range contains from lines n to line m
:.                      # Range contains the current line
:$                      # Range contains the last line
:'c                     # Range contains the marker c
:%                      # Range contains all lines in the current file
:g/pattern/             # Range contains all lines that contain pattern
```

### Another way to Search interactively and then replace
```
/which                  # Search for which
cwthat ESC              # Change to that
n                       # Repeat search
n                       # Repeat search, skip a change
.                       # Repeat change (if appropriate)
```


### Insert texts from another file.
```
:r file                 # Reads file and inserts its content after current line in the current file
:nr file                # Reads file and inserts its content after line n in the current file

CTRL-i or TAB           # While inserting, inserts one shift width
CTRL-v Control_Char     # Inserts control characters by ignoring special meaning of control_char. E.g., Used for inserting Ctrl-M, ESC etc
```

### Description: Change/Modify/Replace Text in Vim
* The change command is a deletion command that leaves the editor in the insert mode. It is performed by typing c followed by a motion. E.g. cw changes a word.
```
C                       # Changes from the current cursor to the end of the line
xp                      # Swaps character under the cursor with next character
stext                   # Substitutes text for the current character until ESC is used
cwtext                  # Changes current word to text until ESC is used
Ctext                   # Changes from the current cursor position to end of the current line to text until ESC is used
cMotion_Command         # Changes from current cursor position upto Motion_Command to text until ESC is used
<< or >>                # Shifts the current line left or right respectively by one tab (Shift width)
n<< or n>>              # Shifts n lines left or right respectively by one tab (Shift width)
<Motion_Command or >Motion_Command  # Use with Motion Command to shift multiple lines left or right
```


### Delete Text in Vim
```
dMotion_Command

dG                      # would delete from current position to the end of the file
d4                      # would delete to the end of the fourth sentence"
"(a-z)ndd               # Deletes n lines into a named buffer a through z. Omitting n works on the current line
"np                     # Retrieves the last nth delete. Last 9 deletes are kept in a buffer
"1pu.u. u.              # scrolls through the delete buffer until the desired delete is retrieved.
```

### Copy/Yank Text in Vim
* Almost all yank commands are performed by typing y followed by a motion command. E.g. y$ yanks to the end of the line.
```
yy                      # Yanks the current line and keeps it in buffer. Press p put the text from buffer into the file
:y                      # Yanks the current line. Same as above
nyy or nY               # Places n lines from the current line in buffer

yMotion_Command         # Copies everything from the cursor to the Motion_Command. E.g.
yG                      # would copy from the current cursor position to the end of the file
y4                      # would copy from the current cursor position to the end of the fourth sentence"
"(a-z)nyy               # Copies n lines into a named buffer a through z. Omitting n works on the current line
```

##: Put/Paste Text in Vim
```
p                       # Puts text from buffer after the position or after the line
P                       # Puts text from buffer before the poition or before the line
(a-z)p or (a-z)P        # Pastes text from a named buffer a through z after or before the current line
```
### Regular Expressions Examples in Vim
```
.*                      # matches everything including empty line
```

### Character Class
```
\\                      # Escapes the \ character.
[A-Z]                   # Set of characters from capital A to capital Z
[a-z]                   # Set of characters from lowercase a to lowercase z
[0-9]                   # Set of characters from 0 to 9
[./=+]                  # Set of characters . (dot), / (slash), =, and +
[-A-F]                  # Set of characters from capital A to capital F and the dash. Dashes must be specified first.
[0-9 A-Z]               # Set of characters containing all capital letters and digits and a space.
[A-Z][a-zA-Z]           # Set of characters with first character from capital A to capital Z and the second character containing all letters
[a-z]{m}                # m occurances of the set from lowercase a to lowercase z
[a-z]{m,n}              # At least m occurances, but maximum n occurances of the set from lowercase a to lowercase z
```

### Miscellaneous
```
:r !ls -l               # Read output of command into buffer.
:set rightleft          # Type from right to left.
:so %                   # Reload .vimrc without exiting VIM. Here so is short for :source and % for the current file.


:reg                    # Show the content of all registers       reg is short for registers
5CTRL-X                 # Decrement the number under cursor by 5   nCTRL-X where n is the number to be subtracted
@@                      # Repeat previous @ command   
vEU                     # Switch word to uppercase    
vE~                     # Modify word case    
ggguG                   # Set all text to lowercase   
:e!                     # Reload Current File(Force Load) 
:line_number            # Move to a specific line in the file     
:$                      # for last line 
$0                      # for first line
57                      # Remove multiple spaces with a single space
[^.]$                   # Does not have . at the end  
                        # Draw ASCII Rectangles
[^,],                   # Match everything till comma in the string "Ram, Mohan"  
:'t+1,.g/^/m            # Reverse line order  :g/^/m 0     't reverses the line within the range marked as t and current position
 ^.\{-}\t               # Non-Greedy Search for \t       \{n,m} mataches n to m. \{n} for exact n. \{,m} for 0 to m. \{n,} for n or more. \{-} for 0 or more of prededing atom. \{-n,m} for 1 or more. \{-n,} for at least or more of preceding, \{-,m} for 1 or more of preceding atoms.
                        # To match XML/HTML Tags  Use % after enabling matchit    help matchit
:%s/./&/g               # Count the number of characters  
>'a                     # Indent  > or < with motion keys  indents from current cursor position till markes locations a
>> or <<                # Indent Line 
:g/^/m0                 # Reverse all lines in a file 
Nyy                     # Copy N lines into the buffer     N is the number of lines
*                       # Search for the word under the cursor in Forward direction   
#                       # Search for the word under the cursor in Backward direction  
'.                      # Jump back to last edited line.    Single quotes followed by a period
g;                      # Jump back to last edited POSITION     g followed by semicolon
.                       # Repeat last command (a simple macro)       Period (.)
==                      # Fix line indent 
:set number             # Show line numbers   
:set nonumber           # Do NOT show line numbers    
"+yy                    # Copy to OS Clipboard            General form is "+<Yank or Delete Command>. Even visual mode selection works
CTRL-r"+                # Paste from Global Clipboard into VIM Command Line       Paste from Global Clipboard into VIM Command Line
CTRL-r"                 # Paste from default register into VIM Command Line    Paste from default register into VIM Command Line
99                      # Automatic indentation   
"gg=G                   # "gg to go to the start of the document, = for indenting, G to go to the end of the document.
Note: You'll need 'filetype plugin indent on' in your .vimrc file, and probably appropriate 'shiftwidth' and 'expandtab' settings."


:g/pattern/d            # Delete all lines matching the pattern - 
:g!/pattern/d           # Delete all lines NOT matching the pattern - 
:v/pattern/d            # Delete all lines NOT matching the pattern since g! is equivalent to v - 
:sort u                 # VIM remove duplicates by sorting: The following command will sort all lines and remove duplicates (keeping unique lines):

~                       # Toggle upper and lower case. E.g. 5~ will toggle next 5 characters
J                       # Join lines by removing ^M or <Enter>. E.g. 3J will join next 3 lines starting with current line.
nJ                      # Joins the next n lines together. Omitting n joins the beginning of the next line to the end of the current line.
.                       # Repeat last text-changing command
u                       # Undo last change. When u is used in combination with . can allow multiple levels of undo in VIM
U                       # Undo all changes to the current line
;                       # Repeats last f F t or T search command
:N or :E                # Opens up a new split-screen window in VIM. Use ^w to switch between the windows


5dw                     # will delete 5 words
3fe                     # will move the cursor forward to the 3rd occurence of the letter e
5i*(ESC)                # inserts *****"

%                       # Search to the beginning of corresponding bracket ( ) [ ] or { }.
:g/str/cmd              # Runs cmd on all lines that contain str
:v/str/cmd              # Executes cmd on all the lines that do NOT match str
```

### TODO
* Vim Buffers
* split and hsplit
* Ctrl W + Up and down
* :next and :previous
* Comment the current line    A// // is the comment characters
* Comment a set of lines
* Automatically reload the file
* Go to next capitalized Letter in the current word
* Remove all lines except the searched pattern Line
