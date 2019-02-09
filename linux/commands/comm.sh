# Description: comm - Compare two sorted files line by line

# Notes:
# 1. With no option, produce three-column output.
#       - Column one contains lines unique to FILE1.
#       - Column two contains lines unique to FILE2.
#       - Column three contains lines common to both the files - FILE1 and FILE2.

# Common Examples
comm path/to/file_1 path/to/file_2

# Examples with details
comm path/to/file_1 path/to/file_2          # Compare two sorted files line by line.
comm -1 file_a file_b                       # Suppress lines unique to file_a
comm -2 file_a file_b                       # Suppress lines unique to file_b
comm -3 file_a file_b                       # Suppress lines that appear in both files

# Cool Tricks
# None

# TODO
# None


# TODO
# 1. None
