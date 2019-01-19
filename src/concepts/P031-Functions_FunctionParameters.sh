# Description: Function Parameters in Bash Script

# Note
# 1. None

function hello {
    arguments="$@"
    for argument in ${arguments}
    do
        echo "Hello ${argument}"
    done
}

# Calling Functions With Parameters
hello "Dilbert Catbert Dogbert"
hello Dilbert Catbert Dogbert

# TODO
# * None
