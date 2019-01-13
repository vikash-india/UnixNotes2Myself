# Description: Wildcards Examples in Bash Script

# Notes
# 1. None

# Show file names beginning with a,b or c
ls /bin/[a-c]*	#

# Do not show file names beginning with a,b,c,e...o
ls /bin/[!a-o]*

# Do not show file names beginning with a,b,c,e...o
ls /bin/[^a-o]*

# TODO
# * None
