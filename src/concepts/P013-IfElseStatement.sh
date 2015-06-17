# Description: If-Else Statement in Unix Shell Script

# Note
# 1. None

# Sample variables
x=111
y=222

# Form 1: With only an if condition
if [ $x == $y ]
then
    echo "The variable x (ie $x) is equal the variable to y (ie $y)"
fi


if [ $x != $y ]
then
    echo "The variable x (ie $x) is not equal to the variable y (ie $y)"
fi

# Form 2: With an if-else condition
if [ $x == $x ]
then
    echo "The variable x (ie $x) is equal the variable to y (ie $y)"
else
    echo "The variable x (ie $x) is not equal to the variable y (ie $y)"
fi

# Form 3: With an if-elif-else condition
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

exit 0

# TODO
# * None
