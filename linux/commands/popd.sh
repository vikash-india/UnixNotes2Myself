# Description: popd - Removes the directory from the directory stack.

# Notes
# 1. The popd command removes entries from the directory stack.
# 2. The popd command also switches to the head of the directory stack unless switching directory is explicitly
#    supressed.
# 3. Use the 'dirs -v -l' command to check the current directory stack.
# 4. If the popd command is successful, the dirs command is also performed and 0 is returned as the exit status.
#    The popd command returns exit status 1 if an invalid option is encountered, or the directory stack is empty,
#    or a non-existent directory stack entry is specified, or the directory change fails.

# Common Examples
popd
popd +2
popd -n +2

# Examples with details
popd        # Without any arguments, popd removes the top directory from the stack, & switches to the new top directory.
popd +2     # Use the +n switch to remove the nth entry counting from the left of the list shown by dirs, starting with
            # zero. This effectively removes the THIRD entry from LEFT and switches to the directory.
popd -0     # Use the -n switch to remove the nth entry counting from the right of the list shown by dirs, starting with
            # zero. This effectively removes the FIRST entry from the RIGHT and switches to the directory.

popd -n     # Use the -n (ALPHABET) switch to manipulate the directory stack without switching to the directory.
            # This effectively removes the TOP entry from the stack WITHOUT switching to the directory.
popd -n +2  # Use the -n (ALPHABET) switch to manipulate the directory stack without switching to the directory.
            # This effectively removes the THIRD entry from LEFT WITHOUT switching to the directory.
popd -n -0  # Use the -n (ALPHABET) switch to manipulate the directory stack without switching to the directory.
            # This effectively removes the FIRST entry from the RIGHT WITHOUT switching to the directory.

# Cool Tricks
# None

# TODO
# None
