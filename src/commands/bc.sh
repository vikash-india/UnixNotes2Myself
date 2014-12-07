# Description: bc - An arbitrary precision calculator language

# Notes
# None

# Common Examples
echo '5 + 5' | bc -l

# Examples with details
bc                                  # Invoke command line calculators bc. Use quit to come out of bc mode.
bc -q                               # Runs bc in quiet mode and prevents the normal GNU bc welcome from being printed.
echo '5 + 5' | bc                   # Use calculator without invoking calculator prompt.
echo "5 * 5" | bc                   # Single or double quotes can be used.
FIVE=5; echo "$FIVE^2" | bc         # Use double quotes to force shell to reinterpret inputs.
echo 'scale = 5; 4 / 3' | bc        # Set scale to compute to 5 decimal places.
echo '10 / 3' | bc -l               # The -l switch sets the scale to 20 decimal places.
echo '5 + 5 * 5 / 5 % 5' | bc       # Addition (+), Subtraction (-), Division (/), Multiplication (*), Modulo (%).
echo '(6^6)^6' | bc                 # Exponentiation. (6^6)^6 is Robert Heinlein's the Number of the Beast.
echo 'sqrt(2)' | bc -l              # Square root. The -l starts bc with a math library and gives access to functions.
echo 'obase=16; 255' | bc           # Decimal to Hexadecimal. obase variables defines output base (Valid values: 2-999).
echo 'obase=2; 12' | bc             # Decimal to Binary.
echo 'ibase=2; obase=A; 10' | bc    # Binary to Decimal. ibase variables defines input base (Valid values: 2-16).
bc -q bc_input_file                 # Giving a file input to bc.

# Cool Tricks
# 1. There are only 10 types of people in the world - those who understand binary, and those who don't.
echo 'ibase=2; obase=A; 10' | bc

# 2. Check the time to compute the value of PI to 5000 decimal places. Tan PI / 4 = 1 => PI = 4 * Arctangent(1)
time echo "scale=5000; 4*a(1)" | bc -l -q

# TODO
# 1. Explore 'man bc' to learn about built-in functions math library, relational operators, bc langauge.
