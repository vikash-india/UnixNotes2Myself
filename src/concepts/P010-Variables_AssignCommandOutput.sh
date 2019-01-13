# Description: Assign Unix Command Output to Variables

# Note
# 1. Either backticks(`) or $() can be used to execute commands and store the output in a variable.
# 2. Use $() format over backtick (`) format.

$SERVER_NAME_1=$(hostname)
$SERVER_NAME_1=`hostname`

echo "Server: ${SERVER_NAME}"

# TODO
# * None
