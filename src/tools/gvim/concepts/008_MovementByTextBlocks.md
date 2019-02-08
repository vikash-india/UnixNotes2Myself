# Description: Movements by Text Blocks in Vim
----------------------------------------------

### Movements by words.
```
w           # Move forward to the first character of the next word.
W           # Move to the first character of the next blank delimited word.

b           # Move to the first character of the previous word.
B           # Move to the first character of the previous blank delimited word.

e           # Move to the end character of the next word.
E           # Move to the end character of the next blank delimited word.
```
#### Note
- A word is a set of alphanumeric characters or an underscore.
- Hyphen or period is considered as a new word for w, b or e.
- Hyphen or period is NOT considered a new word for W, B or E.

### Movements by sentences.
```
(           # Move to the first character of the previous sentence.
)           # Move to the first character of the next sentence.
```
#### Note
-  A sentence ends with a period.

### Movements by paragraphs.
```
{           # Move to the first character of the previous paragraph.
}           # Move to the first character of the next paragraph.
```
#### Note:
- A paragraph is a carriage return on an empty line.

### Movements by sections.
```
[[          # Move a section back.
]]          # Move a section forward.
```
#### Note:
- Section commands are designed to work with nroff files by default.
- Nroff is a language like LaTeX or Markdown and used as a format for UNIX man pages.

### Move to the associated ( ), { }, [ ].
```
%
```
