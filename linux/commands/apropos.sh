# Description: apropos - Search the manual page names and descriptions

# Notes
# 1. The apropos command got its name from the equivalent English word with the same spelling and pronunciation.
# 2. Apropos means relevant.
# 3. Apropos does not actually search the man pages directly. Instead it searches a database that contains just
#    the page's title, section number and description from its NAME section.
# 4. Apropos is useful while searching for commands without knowing their exact names.
# 5. The lines returned for each keyword are sorted according to the man page titles.
# 4. Apropos is case INSENSITIVE during its search.

# Common Examples
apropos uname
man -k uname
apropos -e uname

# Examples with details
apropos whatis          # Search the whatis database for strings.
man -k uname            # Equivalent to apropos uname.
apropos uname whatis    # Multiple search words can be specified while using the command.
apropos -e cat          # Search for the exact word and not the pattern. Equivalent to the command: whatis cat.
apropos -r whatis       # The regular expression switch -r can be omitted as it is the default even when not specified.
apropos -w what*        # The wildcard switch -w can be omitted as it is the default even when not specified.

# Cool Tricks
apropos editor          # Show information about all the editing programs available on a system.

# TODO
# 1. Explore how to update the apropos/whatis database?
