# Description: unalias - Remove entries from the current user's list of aliases

# Notes
# 1. The unalias command removes aliases created during the current login session. It also suppresses permanent aliases,
#    however, they are affected only for the current login session and are restored after the user logs in again.

# Common Examples
unalias x

# Examples with details
unalias x       # Remove the alias x if the user had any alias named x.
unalias x y z   # Remove aliases x, y and z. Any number of alias names can be given on a single line.
unalias -a      # Use -a to remove all aliases for the current user for the current shell for the current session.

# Cool Trick
# None

# TODO
# None
