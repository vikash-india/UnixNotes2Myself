# Description: tail - output the last part of files

# Notes
# None

# Common Examples
tail -f path/to/filename
tail path/to/filename
tail -5 path/to/filename

# Examples with details
tail                        # With no FILE, or when FILE is -, reads the standard input. Use Ctrl-D to end input.
tail path/to/filename       # Print the last 10 lines of the file to standard output.
tail filename1 filename2    # Print the tail 10 lines of each FILE to standard output.
head -20 path/to/filename   # Print the last 20 lines instead of the last 10.
head -v path/to/filename    # Use -v switch to always print headers giving file names. By default, headers are NOT
                            # printed if argument has ONE file but ALWAYS PRINTED if the argument has MULTIPLE FILES.
tail -q filename1 filename2 # Use -q switch to never print headers giving file names.By default, headers are NOT
                            # printed if argument has ONE file but ALWAYS PRINTED if the argument has MULTIPLE FILES.

tail -f filename            # Use -f switch to output appended data as the file grows.
# Cool Trick
# None

# TODO
# None
