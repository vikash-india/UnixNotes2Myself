# Description: Arithmetic Test Operators in Bash Script

# Note
# * None

[ 10 == 10 ]        # == checks for equal to.
echo $?

[ 10 != 10 ]        # != checks for NOT equal to.
echo $?

# Arithmetic Test Operators
[ 10 -eq 10 ]       # -eq checks for equal to.
[ 10 -ne 11 ]       # -ne checks for not equal to.
[ 10 -gt 12 ]       # -gt checks for greater than.
[ 10 -lt 13 ]       # -lt checks for less than.
[ 10 -ge 14 ]       # -ge checks for greater than or equal to.
[ 10 -le 15 ]       # -le checks for less than or equal to.

# Another Use Case
a=10
b=20
if [ "$a" -eq "$b" ]
then
   echo "$a -eq $b: a is equal to b"
else
   echo "$a -eq $b: a is not equal to b"
fi

# TODO
# * None
