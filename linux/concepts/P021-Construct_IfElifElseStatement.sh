# Description: If-Elif-Else Construct in Bash Script

# Note
# 1. The general syntax is
# if [ condition-is-true ]
# then
#       # Code goes here.
# elif [ condition-is-true ]
# then
#       # Code goes here.
# else
#       # Code goes here.
# fi

# Sample variables
x=111
y=222

# Form 1: Only an if condition
if [ $x == $y ]
then
    echo "The variable x (ie $x) is equal the variable to y (ie $y)"
fi

if [ $x != $y ]
then
    echo "The variable x (ie $x) is not equal to the variable y (ie $y)"
fi

# Form 2: An if-else condition
if [ $x == $x ]
then
    echo "The variable x (ie $x) is equal the variable to y (ie $y)"
else
    echo "The variable x (ie $x) is not equal to the variable y (ie $y)"
fi

# Form 3: An if-elif-else condition
if [ $x == $y ]
then
    echo "The variable x (ie $x) is equal the variable to y (ie $y)"
elif [ $x -gt $y ]
then
    echo "The variable x (ie $x) is greater than the variable to y (ie $y)"
elif [ $x -lt $y ]
then
    echo "The variable x (ie $x) is less than the variable to y (ie $y)"
else
    echo "Else condition executed."
fi

# TODO
# * None
