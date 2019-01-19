# Description: String Test Operators in Bash Script

# Note
1. Single equal sign inside the square bracket is for checking string instead of assignment.

# String Test Operators
x="dilbert"
y="catbert"

[ $x = $y ]     # False. The = operator returns true if the value of two operands are equal.
[ $x != $y ]    # True. The !=  operator returns true if the value of two operands are NOT equal.

[ -z $x ]       # False. The -z option returns true if the given string operand size is zero length.
[ -n $y ]       # True. The -n option returns true if the given string operand size is non-zero.

[ $x ]          # True. Returns true if str is not an empty string. If it is empty then it returns false.

# TODO
# * None
