# Description: source - Execute a script from a source file

# Notes
# 1. The source command in bash shell reads and executes commands from the given FILENAME and returns.
# 2. If any ARGUMENTS are supplied to the source command, they become the positional parameters while executing the
#    commands from the FILENAME.

# Common Examples
source /path/to/fileName
source ~/.bashrc

# Examples with details
source /path/to/fileName    # Run the commands from the script file /path/to/filename.
source ~/.bashrc            # Run the .bashrc script file after it has been modified.

# Cool Tricks

# 1. Functions can be defined in a file (say functions.sh) and  then included in another shell script using source
#    filename and used.

# 2. Instead of source, even dot(.) can be used to execute the a source file in the current shell.
. ./filename.sh

# TODO
# None
