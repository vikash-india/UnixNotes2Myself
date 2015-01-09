# Description: whatis - Display one-line manual page descriptions

# Notes:
# 1. The whatis database can be created using /usr/sbin/makewhatis.
# 2. The whatis command is similar to apropos except that it searches only for whole words that match the keywords,
#    and it ignores parts of longer words that match the keywords. Thus, whatis is particularly useful if it is
#    desired to obtain a brief description only about a specific command whose exact name is already known.

# Common Examples
whatis ls
whatis -r ls

# Examples with details
whatis ls       # Search the whatis database for complete words. Equivalent to man -f.
whatis -r ls    # Use -r option to interpret each word as a regular expression. Same as --regex. Slow command.

# Cool Tricks
# None

# TODO
# None
