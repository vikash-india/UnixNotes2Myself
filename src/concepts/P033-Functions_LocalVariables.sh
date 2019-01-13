# Description: Local Variables in Functions

# Note
# 1. Local variables can be accessed within the function.
# 2. Use the local keyword to define variables with functional scope only.

function hello() {
    local LOCAL_VAR=1

    echo $LOCAL_VAR
}

hello

# $LOCAL_VAR is not accessible outside the function
echo $LOCAL_VAR

# TODO
# * None
