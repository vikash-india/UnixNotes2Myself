# Description: Variables in Unix Shell Script

# Note
# 1. Variable names must begin with Alphanumeric character or underscore character (_), followed by one or more
#    Alphanumeric character.
# 2. DO NOT put spaces on either side of the equal sign while assigning value to a variable.
# 3. Variables are case-sensitive, just like filenames, in Linux.
# 4. Do not use ?,* etc, as part of variable names.
# 5. System Variables are generally defined using CAPITAL letters.
echo "HOME: $HOME"
echo "PATH: $PATH"
echo "USER: $USER"

# 6. User defined variables are generally defined using lower case letters.
x=10
type=CAR
echo "x: $x"
echo "type: $type"

# 7. Variables with NULL Values can be defined as follows
test=
test=""

exit 0
