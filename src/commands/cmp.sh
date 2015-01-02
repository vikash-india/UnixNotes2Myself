# Description: cmp - Compare two files byte by byte

# Notes:
# None

# Common Examples
cmp path/to/file_1 path/to/file_2

# Examples with details
cmp path/to/file_1 path/to/file_2       # Compares file_1 with file_2. Returns nothing if they are same. The byte and
                                        # line number at which the first difference occurred is reported.
cmp -l file_1 file_2                    # Print the byte number (decimal) and the differing byte values (octal) for
                                        # each difference.

# Cool Tricks
# None

# TODO
# None
