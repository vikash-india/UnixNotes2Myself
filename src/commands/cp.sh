# Description: cp - Copy files and directories

# Notes
# None

# Common Examples
cp path/to/source path/to/destination
cp -r dir_1 dir_e

# Examples with details
cp path/to/source path/to/destination   # Copy source file or directory to destination.
cp -i source destination                # Warn before overwriting.
cp -v file_1 file_2 file_3 dir_1        # Verbose Output while copying file_1, file_2 and file_3 to directory dir_1.
cp -f file_1 dir_1                      # Copy file_1 to directory dir_1. Overwrite without warning.
cp -l file_1 file_4                     # Link files instead of copying. Inode of both files remain same.
cp -r dir_1 dir_e                       # Copy directories recursively. Equivalent to cp -R d e.
cp -u file_1 file_5                     # Copy only when the SOURCE ie file_1 is newer than the destination file_5
                                        # or when the destination file is missing.
cp --parents foo/foo/foo.txt bar        # Creates the path foo/foo under bar and then copies foo.txt.

# Cool Tricks
# None

# TODO
# None
