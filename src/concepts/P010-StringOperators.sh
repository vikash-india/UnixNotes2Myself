# Description: String Operators in Unix Shell Script

# String Operators
x="dilbert"
y="catbert"

[ $x = $y ]     # False. The = operator checks if the value of two operands are equal.
[ $x != $y ]    # True. The !=  operator checks if the value of two operands are NOT equal.
[ -z $x ]       # False. The -z operator checks if the given string operand size is zero length.
[ -n $y ]       # True. The -n operator  checks if the given string operand size is non-zero.
[ $x ]          # True. The str Check if str is not an empty string. If it is empty then it returns false.

exit 0

# TODO
# * None
