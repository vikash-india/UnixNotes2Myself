# Description: diff - Compare files line by line

# Notes:
# 1. None

# Common Examples
diff path/to/file1 path/to/file2

# Examples with details
diff a.txt b.txt            # Finds the difference between 2 files a.txt and b.txt
diff -b a.txt b.txt         # Ignore changes in amount of white space
diff -B a.txt b.txt         # Ignore changes that just inserts or deletes blank lines
diff --brief a.txt b.txt    # Report only whether the files differ, not the details of the differences.

# Cool Tricks
# None

# TODO
# None
