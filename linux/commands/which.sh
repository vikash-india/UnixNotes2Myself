# Description: which - locate a command

# Notes
# 1. The which command returns the pathnames of the files (or links) which would be executed in the current environment,
#    had its arguments been given as commands.
# 2. The which command searches the PATH for executable files matching the names of the arguments.
# 3. The which command does NOT follow symbolic links.

# Common Examples
which ls

# Examples with details
which ls        # Outputs /bin/ls. Locate the executable file associated with a given command ls.
which ls rm     # Multiple arguments can be passed to which command. The exit status will be as follows,
                # 0 - if all specified commands are found and executable.
                # 1 - if one or more specified commands is nonexistent or not executable.
                # 2 - if an invalid option is specified.
which -a ls     # Use the -a switch to print all matching pathnames of each argument.

# Cool Tricks
# None

# TODO
# 1. Find the difference between which -a ls and which ls.
