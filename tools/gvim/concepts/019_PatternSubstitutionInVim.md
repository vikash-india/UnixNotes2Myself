# Description: Pattern Substitution in Vim
------------------------------------------

### Pattern substitution using ex command :s (substitute).
- The general form of substitute command is `:n,ms/searchPattern/newString/flags`.
- This searches from line 'm' to 'n' and replace 'searchPattern' with 'newString' according to 'flags'.
- Flags can be
    - g to substitute each and every pattern on a line.
    - c to confirm substitution.
    - i to ignore case for the pattern.
    - I to DONT ignore case for the pattern.
    - p to print changed lines.

```
:s/old/new/             # Change the FIRST occurrence of the pattern old to new on the current line.
:s/old/new/g            # Change EVERY occurrence of the pattern old to new on the current line.

:50,100s/old/new/g      # Change every occurrence of old to new from line 50 to line 100.
:1,$s/old/new/g         # Change every occurrence of old to new within the entire file.
:%s/old/new/g           # Same as above. % is same as 1,$.

:1,30s/old/new/gc       # Confirm before substitution. Press y (YES), n (NO), a (All), l (LAST), q (QUIT)

:1,'ms/old/new/g        # Change EVERY occurrence of the pattern old to new between line 1 and line marked m.
:'m,'ns/old/new/g       # Change EVERY occurrence of the pattern old to new on all lines marked between m and n.

&                       # Repeat last :s command

:%s:/path/to/file1:/path/to/file2:g     # Use : as separator instead of \
```

### Pattern substitution using ex command :g (global).
- The general form of global substitution command is `:g/pattern/s/old/new/flags`
- This searches for a 'pattern', and then substitute 'old' with 'new' according to 'flags' in only those lines that contain 'pattern'.
- This is context-sensitive replacement.
- This works on ALL lines of the file.

```
:g/dilbert/s/wally/alice/g  # Find dilbert and replace wally with alice on those lines.
:g/dilbert/s//alice/g       # Same as :%s/dilbert/alice/g. Find dilbert and replace dilbert with alice on those lines.
```

### TODO
- It is also possible to combine the :g command with :d, :mo, :co, and other ex commands. Explore.
