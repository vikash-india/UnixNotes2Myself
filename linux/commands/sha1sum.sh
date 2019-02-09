# Description: sha1sum - compute and check SHA1 message digest

# Notes
# 1. None

# Common Examples

# Examples with details
sha1sum /path/to/file                   # Computes the sha1 checksum of /path/to/file.
sha1sum *                               # Computes sha1 checksum of all the files in the current directory.
sha1sum -t filename                     # Read file in text mode and computes the checksum. This is the default.
sha1sum --text filename                 # Same as above.
sha1sum -b filename                     # Read file in binary mode and computes the checksum.
sha1sum --binary filename               # Same as above.
sha1sum --version                       # Displays version information.
sha1sum --help                          # Displays help information.

# Note: The content of the file "filename" should be sha1checksum<Space>filename. Example
# 25c2b0560af7a35aef272fe2dc1a46b376fc74e4  file1.txt
# b65a742f791993dd64c7a8c4873325a1a7de9b54  file2.md

sha1sum -c filename                     # Read sha1 checksums from the filename and checks them.
sha1sum --check filename                # Same as above.
sha1sum -c --quiet x.out                # Don't print OK for each successfully verified file.
sha1sum -c --quiet --status filename    # The --status flag won't output anything, status code shows success.
sha1sum -cw --quiet filename            # Warn about improperly formatted checksum lines.
sha1sum -c --quiet --warn filename      # Same as above.

# Cool Tricks
# None

# TODO
# None
