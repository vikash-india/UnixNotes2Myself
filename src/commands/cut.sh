# Description: cut - Remove sections from each line of files

# Notes
# None

# Common Examples

# Examples with details
cut -c1-10 filename.txt         # Cuts the first 10 characters of each line of filename.txt.
ls -l | cut -c1-10              # Cuts the first 10 characters of each line of the output of ls -l.
cut -f1,3-5 -d' ' filename.txt  # Use -f to specify fields. Cuts the column 1, 3 to 5 from each line of filename.txt.
                                # Use -d switch to specify delimiter. The delimiter is <space> here. Default delimiter
                                # is tab but special character like <space> should be quoted.
cut -f1,3- filename.txt         # Cuts columns 1 and 3 till end of each line.
cut -s -f1,3- filename.txt      # The -s switch suppresses those lines which has no delimiters. Used with -f option.
                                # Unless specified, lines with no delimiters will be passed through untouched.

# Cool Tricks
# None

# TODO
# None
