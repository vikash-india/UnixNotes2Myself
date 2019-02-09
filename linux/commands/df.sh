# Description: df - Check file system disk space usage

# Notes
# 1. df cannot show the space available on unmounted file systems.

# Common Examples
df -hT --total

# Examples with details
df                          # Shows disk usage.
df -h                       # Use -h switch to print sizes in human readable format. Eg. 1K, 234M, 2G etc.
df --human-readable         # Same as above.
df -H                       # Use -H switch to print sizes in human readable format but use powers of 1000 not 1024.
df --si                     # Same as above.
df -h --total               # Use --total switch to produce a grand total at the end.
df -a                       # Include dummy file systems. Same as df --all.
df --version                # Show version information.
df -hT                      # Use -T switch to print file system type.

# Cool Tricks
# None

# TODO
# 1. Explore man pages to include/exclude file system type, check block size, inodes etc.
