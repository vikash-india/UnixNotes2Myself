# Description: File Test Operators in Unix Shell Script

# Sample Text File
# 1. This file contains texts
# 2. This file has read, write and execute permission.
filename="P011-SampleTextFile.txtt"

# File Test Operators
[ -b $filename ]    # False. The -b operator checks if file is a block special file.
[ -c $filename ]    # False. The -c operator checks if file is a character special file.
[ -d $filename ]    # False. The -d operator check if file is a directory.
[ -f $filename ]    # True.  The -f operator check if file is an ordinary file and not a directory or special file.
[ -g $filename ]    # False. The -g operator checks if file has its set group ID (SGID) bit set.
[ -k $filename ]    # False. The -k operator checks if file has its sticky bit set.
[ -p $filename ]    # False. The -p operator checks if file is a named pipe.
[ -t $filename ]    # False. The -t operator checks if file descriptor is open and associated with a terminal.
[ -u $filename ]    # False. The -u operator checks if file has its set user id (SUID) bit set.
[ -r $filename ]    # True.  The -r operator checks if file is readable.
[ -w $filename ]    # True.  The -w operator check if file is writable.
[ -x $filename ]    # True.  The -x operator check if file is execute.
[ -s $filename ]    # True.  The -s operator check if file has size greater than 0.
[ -e $filename ]    # True.  The -e operator check if file exists. Is true even if file is a directory but exists.

exit 0

# TODO
# * None
