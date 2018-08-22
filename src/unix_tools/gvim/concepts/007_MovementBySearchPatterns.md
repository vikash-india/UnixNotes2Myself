# Description: Movements by Search Pattern in Vim
-------------------------------------------------

### Movements by search patterns in the current LINE.
```
fc          # Move forward to the character c on the current line.
Fc          # Move backward to the character c on the current line.

tc          # Move BEFORE the NEXT occurrence of c in the current line.
Tc          # Move AFTER the PREVIOUS occurrence of c in the current line.

;           # Repeat previous find command in same direction.
,           # Repeat previous find command in opposite direction.
```

### Movements by search patterns in the current FILE.
```
/pattern    # Search forward for the pattern in the current file.
?pattern    # Search backward for the pattern in the current file.

/<ENTER>    # Repeat search forward.
?<ENTER>    # Repeat search backward.
```
#### Note
- Use n to repeat the search in the same direction.
- Use N to repeat the search in the opposite direction.
- Use :set wrapscan to control whether search wraps.
- Use :set nowrapscan to control whether search does NOT wraps.
