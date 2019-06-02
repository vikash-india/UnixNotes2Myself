# Description: The tr Command

### Notes
* The tr command is used for translating, or deleting, or squeezing repeated characters. 
* It will read from STDIN and write to STDOUT.

### Common Examples
```shell
echo "Hello" | tr "a-m" "A-M"
tr '{}' '()' < inputfile > outputfile
```

### Examples With Details
```shell
# Translate Characters
tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ    # Convert lower case to upper case
tr [:lower:] [:upper:]                                      # Convert lower case to upper case
tr a-z A-Z                                                  # Convert lower case to upper case

echo "Hello" | tr a-m A-M                                   # HELLo
tr '{}' '()' < inputfile > outputfile                       # Translate braces into parenthesis

# Translate Characters by Squeezing Repetition
echo "This is for testing" | tr [:space:] '\t'              # Translate white-space to tabs
echo "This   is   for testing" | tr [:space:] '\t'          # Use -s option to squeeze repetition of characters. 
                                                            # Multiple spaces will be replaced with single tab.
echo "This  is  for testing" | tr -s [:space:] ' '          # Convert multiple spaces with single spaces.
tr -s '\n' ' ' < file.txt                                   # Join all lines into a single line or string.

# Delete Characters
echo "This is test string" | tr -d 't'                      # Delete specified characters using -d option
echo "my username is 432234" | tr -d [:digit:]              # Remove all the digits from the string

# Delete Characters by Complementing a Set
echo "my username is 432234" | tr -cd [:digit:]             # Use -c option to complement the SET1. Remove all 
                                                            # characters except digits.
tr -cd [:print:] < file.txt                                 # Remove all non-printable character from a file.
echo "unix" | tr –c "u" "a"                                 # uaaa will be the output.
```

### Cool Tricks
* Roman Cipher Encoding and Decoding
```bash
# Transform a String
echo 'Dilbert' | tr 'A-Za-z' 'N-ZA-Mn-za-m'  # Outputs Qvyoreg

# Get the original string.
echo 'Qvyoreg' | tr 'a-z' 'n-za-m'  # Dilbert
```

### TODO
* None
