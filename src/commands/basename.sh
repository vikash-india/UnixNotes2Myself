# Description: basename - strip directory and suffix from filenames

# Notes
# None

# Common Examples
basename /path/to/filename.ext
basename /path/to/filename.ext .ext
basename -a -s .ext filename1.ext filename2.ext

# Examples with details
basename /path/to/filename.ext                              # Outputs filename.txt.
basename /path/to/filename.ext .ext                         # Outputs filename. The second argument .ext removes the
                                                            # suffix from the first argument along with path info.
basename -a /path/to/filename1.ext /path/to/filename2.ext   # The -a switch supports multiple arguments and treat each
                                                            # as a NAME.
basename -a -s .ext filename1.ext filename2.ext             # Use -s switch to remove a trailing SUFFIX .ext from
                                                            # filename1.ext and filename2.ext. This form is useful when
                                                            # multiple arguments are passed to this command.
basename -a /path/to/filename1.ext /path/to/filename2.ext   # Use -z switch separate output with NUL rather than a
                                                            # newline.

# Cool Tricks
# None

# TODO
# None
