# Description: Command Line Arguments in a Bash Script

# Note
# 1. script.sh parameter1 parameter2 parameter3 parameter4
#       $0: "script.sh"
#       $1: "parameter1"
#       $2: "parameter2"
#       $3: "parameter3"
#       $4: "parameter4"

# Fixed Number of Command Line Arguments
ONE="$1"
TWO="$2"
for argument in $ONE $TWO
do
    echo ${argument}
done

# Variable Number of Command Line Arguments
arguments="$@"
for argument in ${arguments}
do
    echo ${argument}
done

# TODO
# * None
