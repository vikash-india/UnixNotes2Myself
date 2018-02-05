# Description: Basic Structure of an AWK Script

# Notes
# 1. Execute the script using the following commands
#       awk -f 005_basic_structure.awk 004_a_data.txt
#       awk -f 005_basic_structure.awk 004_a_data.txt > output.txt
# 2. This awk script adds one line before and one line after the input file.
# 3. The basic structure of an awk program is `pattern { action }`. If the pattern is true then action is performed.
# 4. The default pattern is something that matches every line. This is the blank or null pattern.
# 5. The keyword BEGIN is a special pattern to specify actions to be taken before any lines are read.
# 6. The keyword END is another special pattern to specify actions to be taken after the last line is read.

# Main Code
BEGIN { print "THE BEGINNING" }     # Begin section - Actions to be taken before any lines are read.
      { print }                     # Loop section - Test for Null Pattern - Matches every line. Prints every line.
END   { print "THE END"  }          # End section - Actions to be taken after the last line is read.
