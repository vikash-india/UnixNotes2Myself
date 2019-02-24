# Description: The apropos Command

### Notes
1. The apropos command searches the manual page names and descriptions.
2. The apropos command got its name from the equivalent English word with the same spelling and pronunciation.
3. Apropos means relevant.
4. Apropos does not actually search the man pages directly. Instead it searches a database that contains just
   the page's title, section number and description from its NAME section.
5. Apropos is useful while searching for commands without knowing their exact names.
6. The lines returned for each keyword are sorted according to the man page titles.
7. Apropos is case INSENSITIVE during its search.

### Common Examples
```
apropos uname
man -k uname
apropos -e uname
```

### Examples with details
```shell
apropos whatis          # Search the whatis database for strings.
man -k uname            # Equivalent to apropos uname.
apropos uname whatis    # Multiple search words can be specified while using the command.
apropos -e cat          # Search for the exact word and not the pattern. Equivalent to the command: whatis cat.
apropos -r whatis       # The regular expression switch -r can be omitted as it is the default even when not specified.
apropos -w what*        # The wildcard switch -w can be omitted as it is the default even when not specified.
```

### Cool Tricks
```shell
apropos editor          # Show information about all the editing programs available on a system.
apropos gpg             # Show all commands where gpg is referred.
```

### TODO
* Explore how to update the apropos/whatis database?
