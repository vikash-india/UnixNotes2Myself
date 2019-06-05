# Description: Buffers in Vim
-----------------------------

### Numbered Buffers (1 to 9)
- Numbered buffers are buffers identified by numbers 1 to 9.
- The last nine deletions are stored by Vim in numbered buffers 1 to 9.
- Small deletions (i.e. only parts of lines) are not saved in numbered buffers.

```
p           # Recover last deletion.
"1p         # Same as above using numbered buffer 1 explicitly.
"2p         # Recover second-to-last deletion from the numbered buffer 2.
"3p         # Recover third-to-last deletion from the numbered buffer 3.

"1pu.u.u    # Use undo(u) and repeat(.) commands to search through numbered buffers by
              automatically incrementing the buffer numbers.
```

### Named Buffers (a to z)
- Named buffers are buffers identified by small case letters a to z.
- Named buffers can be specified before any delete, change, yank or put command.
- Specifying a buffer name with capital letters A to Z will APPEND to the current contents of the respective buffer.
- The general syntax for creating named buffers is `[double quote][(a to z) or (A to Z)][delete, change, yank or put command]`.

```
"adw        # Delete a word into the named buffer 'a'.
"d3yy       # Yank next three lines into buffer 'd'.
"xD         # Delete from current cursor position till the end of line into buffer 'x'.

"Adw        # Delete a word into buffer 'a' by APPEND the content instead of overwriting.
"Dyy        # Yank the next line into buffer 'D' and APPEND the content.

"ap         # Put/Paste the content of buffer 'a' after current cursor position.
"dP         # Put/Paste the content of buffer 'a' before current cursor position.
```
