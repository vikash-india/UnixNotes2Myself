# Description: cat - Concatenate files and print on the standard output

# Notes
# None

# Common Examples
cat file_name
cat path/to/file1.txt path/to/file2.txt

# Examples with details
cat file_name                           # Display content of file_name.
cat -b file_name                        # Number nonempty output lines, overrides -n.
cat -n file_name                        # Number all output lines.
cat -E file_name                        # Display $ at end of each line.
cat file1.txt file2.txt file3.txt       # Concatenate the contents of 3 files.
cat -s file_name                        # Don’t show more than 1 blank space by squeezing the blank.
cat -E file_name                        # Show $ at the end of each line.
cat -v file_name                        # Show non-printing characters. Use ^ and M- notation except LFD and TAB.
cat -T file_name                        # display TAB characters as ^I.
cat -t file_name                        # Equivalent to -vT.
cat                                     # Show contents types thru stdin. Use Ctrl-D to stop stdin input.
cat -                                   # Show contents types thru stdin.
cat file_1 - file_2                     # Show contents of file_1, stdin and then file_2.

# Cool Tricks
cat > file_1                            # File creation directly from the text entered through stdin.
cat file_1 > file_2                     # Copy file_1 as file_2.
cat file_1 >> file_2                    # Append the content of file_1 at the end of file_2.
cat file_1 file_2 | sort > file_sorted  # The output from file_1 and file_2 is sorted and redirected to file_sorted.
cat file_name | less                    # Check pagewise if the file is too large.

# TODO
# 1. None
