# Description: rmdir - Remove empty directories

# Notes
# None

# Common Examples
rmdir path/to/dir1
rmdir -p a/b/c

# Examples with details
rmdir a                     # Removed directory if it is empty. Use -v flag for verbose output.
rmdir -p a/b/c              # Remove DIRECTORY and its ancestors. Equivalent to rmdir a/b/c a/b a.
rmdir a/b/c a/b/ a          # Removes 3 directories. Order is important.

# Cool Tricks
# None

# TODO
# None
