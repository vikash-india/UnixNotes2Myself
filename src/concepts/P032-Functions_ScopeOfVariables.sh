# Description: Scope of Variables in Functions

# Note
# 1. None

GLOBAL_VAR1=1

function hello() {
    # GLOBAL_VAR1 is available here
    echo $GLOBAL_VAR1

    # GLOBAL_VAR2 is also available here since it is defined before functions invocation.
    echo $GLOBAL_VAR2

    # Error: GLOBAL_VAR3 is NOT available here since it is defined AFTER function invocation.
    echo $GLOBAL_VAR3
}

GLOBAL_VAR2=2

# Calling functions with parameters
hello

GLOBAL_VAR3=3

# TODO
# * None
