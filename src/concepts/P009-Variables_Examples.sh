# Description: Variables in Bash Script

# Note
# * None

# System defined variables
echo "HOME: $HOME"
echo "PATH: $PATH"
echo "USER: $USER"

# User defined variables
x=10
y="10"
type_1=CAR
type_2="CAR"
echo "x: $x, y: $y"
echo "type1: $type_1, type2: $type_2"

# Variables with NULL Values
test=
test=""

# Use curly braces to print variables
MY_VARIABLE="Write"
echo "Output $MY_VARIABLE"
echo "Output ${MY_VARIABLE}ing."

# TODO
# * None
