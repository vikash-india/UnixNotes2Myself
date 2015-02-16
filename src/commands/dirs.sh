# Description: dirs - List current directory stack.

# Notes
# 1. The directories are added to the directory stack using the command pushd.
# 2. The directories are removed from the directory stack using the command popd.

# Common Examples
dirs
dirs -v -l
dirs -0
dirs +2

# Examples with details
dirs                    # Displays the list of currently remembered directories. Default display is on a single line.
dirs -p                 # Use -p switch to print the directory stack with one entry per line.
dirs -v                 # Use -v switch to print the directory stack with one entry per line, prefixing each entry with
                        # its index in the stack.
dirs -l                 # Use -l switch to produces a longer listing. The default listing format uses a tilde to denote
                        # the home directory while the longer listings uses absolute path.
dirs +3                 # Use +n switch to displays the nth entry counting from the left of the list shown by dirs when
                        # invoked without options, starting with zero.
dirs -0                 # Use -n switch to display the nth entry counting from the right of the list shown by dirs when
                        # invoked without options, starting with zero.
dirs -c                 # Clears the directory stack by deleting all of the entries.

# Cool Tricks
# 1. Add an alias to show directory index and absolute path
alias dirs='dirs -v -l'

# TODO
# None
