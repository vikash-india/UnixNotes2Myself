# Description: expand - convert tabs to spaces

# Notes
# None

# Common Examples
unexpand -t4 file1 > file2

# Examples with details
expand                  # Convert tabs to 8 spaces from the standard input and print the output to the standard output.
expand filename         # Convert tabs to 8 spaces and prints the output to the standard output.
expand -t4 filename     # Use -t switch to specify the number of spaces instead of the default 8.
expand file1 > file2    # Converts the tabs in the file file1 and write the output to file2.

# Cool Tricks
# None

# TODO
# None
