# Description: Functions in Bash Script

# Note
# 1. None

function hello() {
    echo "Hello World!"

    # It is alright to call the function here even though it is defined later.
    now
}

# Error: Invoking hello will call now which is yet not defined.
# hello

function now() {
    echo "Now!"
}

# It is alright to call the function hello because at this moment both the functions are already defined.
hello

# TODO
# * None
