# Description: An AWK Script with Multiple LOOP Section Rules

# Notes
# 1. Execute the program using `awk -f 006_multiple_rules.awk 004_a_data.txt`.

# AWK Code
/Line 1/  { print $0 }      # Loop section - Test for 'Line 1' - Matches the line 1 and line 10. Print the lines.
/Line 3/  { print $0 }      # Loop section - Test for 'Line 3' - Matches the third line. Prints the third line.
/Line 1/  { print $0 }      # Each input line is passed through all the rules before moving to next line.
/Line 4/  { print $1 }      # Print the first field instead of the first line.
