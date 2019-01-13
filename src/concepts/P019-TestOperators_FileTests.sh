# Description: File Test Operators in Bash Script

filename="/etc/hostname"

# File Test Operators
[ -b $filename ]    # False. The -b option returns true if file is a block special file.
[ -c $filename ]    # False. The -c option returns true if file is a character special file.
[ -d $filename ]    # False. The -d option returns true if file is a directory.
[ -f $filename ]    # True.  The -f option returns true if file is an ordinary file and not a directory or special file.
[ -g $filename ]    # False. The -g option returns true if file has its set group ID (SGID) bit set.
[ -k $filename ]    # False. The -k option returns true if file has its sticky bit set.
[ -p $filename ]    # False. The -p option returns true if file is a named pipe.
[ -t $filename ]    # False. The -t option returns true if file descriptor is open and associated with a terminal.
[ -u $filename ]    # False. The -u option returns true if file has its set user id (SUID) bit set.
[ -r $filename ]    # True.  The -r option returns true if file is readable.
[ -w $filename ]    # False. The -w option returns true if file is writable.
[ -x $filename ]    # False. The -x option returns true if file is execute.
[ -s $filename ]    # True.  The -s option returns true if file has size greater than 0.
[ -e $filename ]    # True.  The -e option returns true if file exists. Is true even if file is a directory but exists.

# TODO
# * None
