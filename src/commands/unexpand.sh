# Description: unexpand - convert spaces to tabs

# Notes
# None

# Common Examples
unexpand -t4 file1 > file2

# Examples with details
unexpand                        # Convert initial 8 blank spaces to tabs from the standard input and print the output
                                # to the standard output.
unexpand filename               # Convert initial 8 blank spaces to tabs and prints the output to the standard output.
unexpand --first-only filename  # Use --first-only switch to convert only 8 blank spaces to tabs only at the beginning
                                # of the line. Subsequent spaces in the lines are left intact. This is the default.
unexpand -a filename            # Convert ALL 8 blank spaces to tabs and prints the output to the standard output.
unexpand -t4 filename           # Use -t switch to specify the number of spaces instead of the default 8.
                                # This enables -a by default.
unexpand file1 > file2          # Converts the spaces to tabs in the file file1 and write the output to file2.

# Cool Tricks
# None

# TODO
# None
