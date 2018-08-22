# Description: Pattern Search in Vim
------------------------------------

### Character Search
```
fc          # Search forward on the current line and move the cursor to character c.
Fc          # Searches backward on the current line and move the cursor to character c.

tc          # Searches forward on the current line and move the cursor to character before c.
Tc          # Searches backward on the current line and move the cursor to character before c.
```

### Pattern Search
```
/pattern    # Search FORWARD for the pattern.
?pattern    # Search BACKWARD for the pattern.

n           # Search for the next instance of the pattern. It could be forward or backward depending upon the / or ?.
N           # Search for the previous instance of pattern. It could be forward or backward depending upon the / or ?.
,           # Repeat last / or ? search in reverse direction. It could be forward or backward depending on / or ?.
```

### Vim Settings Specific to Pattern Search
```
:set ic     # Vim setting to ignore case while searching.
:set noic   # Vim setting to NOT ignore case while searching.
```
