# Description: Functions Exit Status

# Note
# 1. Functions can have exit status.
# 2. Explicit Return Value: Use the return keyword to EXPLICITLY return values from the function.
# 3. Implicit Return Value: The exit status of the last command executed in the function.
# 4. Function can return any value from 0 to 255.
# 5. The return value of 0 indicates success.
# 6. Use the special variable $? to get the exit status of the function.

# Explicit Return
function hello1() {
    echo "Hello"

    return 0
}

hello1
echo "Explicit Return: $?"

# Implicit Return
function hello2() {
    ls /path/to/no/where
}

hello2
echo "Implicit Return: $?"

# Typical Usage
message=$( hello1 )     # Hello. Capture the last echo message from the function.
return_value=$?         # 0. Capture the return value of the function.

echo $message
echo $return_value

# TODO
# * None
