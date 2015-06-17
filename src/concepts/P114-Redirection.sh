# Description: Redirection of Standard Input/Output in Unix Shell Scripts

# Syntax: Linux-command > filename
ls > x.out                      # If 'x.out' file exists it will be OVERWRITTEN without any warning.
ls >> x.out                     # If 'x.out' file exists it will be APPENDED.
cat < x.out                     # To take input to a Linux-command from file instead of key-board.

# Few more examples
cat < input_file > output_file  # Takes input from input_file and redirects output to output_file.

exit 0
