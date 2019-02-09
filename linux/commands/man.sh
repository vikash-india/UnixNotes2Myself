# Description: man - An interface to the on-line reference manuals

# Notes
# None

# Common Examples
man ls

# Examples with details
man man                         # Displays Manual about "man" command. Other example can be man ls, man mv etc.
man -a ls                       # Display all the manual pages that match name, not just the first.
man -f ls                       # Equivalent to whatis. Displays 1 line description of ls in all man page sections.
man -k ls                       # Equivalent to apropos.
man -aw ls                      # Print the location(s) of the files that would be  formatted  or  displayed.
man -aW man | xargs ls -l       # Same as above but the arguments is passed to the filter for further processing.
man 2 write                     # Manual for write from Section 2
man -S2 write                   # Manual for write from Section 2

# Cool Tricks
# None

# TODO
# None
