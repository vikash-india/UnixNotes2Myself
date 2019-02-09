# Description: The .gitignore File

### Note
* Files or patterns stored in .gitignore files in the root directory are not tracked and are not even mentioned by git.
* Rules for .gitignore
    1. Blank lines or lines starting with # are comments and are ignored.
    2. Standard glob patterns work. Eg CVS will ignore CVS in all directories recursively.
    3. You can end patterns with a forward slash (/) to specify a directory.
    4. You can negate a pattern by starting it with an exclamation point (!).

### Common Examples
```
gvim .gitignore
```

### Detailed Examples
```
gvim .gitignore         # Edit this file to add patterns.
```

### TODO
* None
