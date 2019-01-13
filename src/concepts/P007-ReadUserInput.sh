# Description: Read User Input in Bash Script

# Note
# 1. The read command accepts STDIN.
# 2. The general syntax: read -p "PROMPT" VARIABLE

# Read till ENTER is pressed
echo "Enter your input: "
read line_input
echo "Input:  $line_input"

# Shorter and cleaner alternative
read -p "Enter your input: " line_input
echo "Input: $line_input"

# TODO
# * None
