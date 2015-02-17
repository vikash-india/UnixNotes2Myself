# Description: pushd - Add a directory to the directory stack.

# Notes
# 1. The pushd command adds a directory to the top of the directory stack, or rotates the stack, making the new top of
#    the stack the current working directory.
# 2. The pushd command also switches to the head of the directory stack unless switching directory is explicitly
#    supressed.
# 3. Use the 'dirs -v -l' command to check the current directory stack.
# 4. If the pushd command is successful, the dirs command is also performed and 0 is returned as the exit status.
#    The pushd command returns exit status 1 if an invalid option is encountered, or the directory stack is empty,
#    or a non-existent directory stack entry is specified, or the directory change fails.

# Common Examples
pushd
pushd -n path/to/directory
pushd +3

# Examples with details
pushd                       # Without any arguments, exchanges the top two directories.
                            # Returns 0 on success or returns 1 if directory stack has less than 2 entries.
pushd +3                    # Use the +n switch to rotate the stack so that the nth directory (counting from the left
                            # of the list shown by dirs, starting with zero) is at the top and changes to the directory.
pushd -0                    # Use the -n switch to rotate the stack so that the nth directory (counting from the right
                            # of the list shown by dirs, starting with zero) is at the top and changes to the directory.

pushd path/to/directory     # Adds path/to/directory to the directory stack at the top, making it the new current
                            # working directory.
pushd -n path/to/directory  # Adds path/to/directory to the directory stack at the SECOND position without switching to
                            # that directory.

pushd -n +2                 # Use -n switch to manipulate the directory stack without switching to the directory.
                            # This effectively rotates the stack to make the +2 entry as the head of the stack.
pushd -n -2                 # Use -n switch to manipulate the directory stack without switching to the directory.
                            # This effectively rotates the stack to make the -2 entry as the head of the stack.

# Cool Tricks
# None

# TODO
# None
