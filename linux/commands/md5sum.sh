# Description: md5sum - Compute and check MD5 message digest

# Notes
# 1. Print or check MD5 (128-bit) checksums. With no FILE, or when FILE is -, read standard input.
# 2. The sums are computed as described in RFC 1321.
# 3. The MD5 algorithm should not be used any more for security related purposes. Instead, better
#    use an SHA-2 algorithm, implemented in the programs - sha224sum, sha256sum, sha384sum, sha512sum.

# Common Examples
md5sum filename
md5sum /path/to/filename
md5sum -c filename                  # Filename contains md5checksum<Space>filename

# Examples with details
md5sum /path/to/file                # Computes the md5 checksum of /path/to/file.
md5sum *                            # Computes md5 checksum of all the files in the current directory.
md5sum -t filename                  # Read file in text mode and computes the checksum. This is the default.
md5sum --text filename              # Same as above.
md5sum -b filename                  # Read file in binary mode and computes the checksum.
md5sum --binary filename            # Same as above.
md5sum --version                    # Displays version information.
md5sum --help                       # Displays help information.

# Note: The content of the file "filename" should be md5checksum<Space>filename. Example
# 99b51a4f0526434b083701a896550b72  file1.zip
# 99b51a4f0526434b083701a896550b72  file2.txt
md5sum -c filename                  # Read MD5 checksums from the filename and checks them.
md5sum --check filename             # Same as above.
md5sum -c --quiet x.out             # Don't print OK for each successfully verified file.
md5sum -c --quiet --status filename # The --status flag won't output anything, status code shows success.
md5sum -cw --quiet filename         # Warn about improperly formatted checksum lines.
md5sum -c --quiet --warn filename   # Same as above.

# Cool Tricks
# None

# TODO
# 1. Read more about MD5 checksums from RFC 1321
