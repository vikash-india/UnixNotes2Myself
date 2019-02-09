# Description: echo - Display a line of text

# Notes
# None

# Common Examples
echo Hello World
echo "Hello World"
echo 'Hello World'

# Examples with details
echo <string>               # Displays text. <string> can be in single quotes, double quotes or without quotes.
echo "Hello"" World"        # Concatenate two stings - "Hello" and " World".
echo -n "Hello World"       # Output without the trailing newline (\n). Useful for scripting.

# Cool Tricks
# 1. Effect of single quotes, double quotes and concatenation on a bash prompt.
echo $$                     # Print the process id of the current shell.
echo "$$"                   # Print the process id of the current shell because double quotes is interpreted by bash.
echo '$$'                   # Print $$ because single quote is NOT interpreted by bash.
echo '"$$"'                 # Print "$$".
echo "'$$'"                 # Print the process id of the current shell.
echo "'"'$$'"'"             # Outputs '$$'. Concatenation - First "'" outputs ', '$$' outputs $$, Last "'" outputs '.
echo ''$$''                 # Print the process id of the current shell. Concatenation -  '', $$ and ''.
echo '''$$'''               # Prints $$. Concatenation -  '', '$$' and ''.

# TODO
# None
