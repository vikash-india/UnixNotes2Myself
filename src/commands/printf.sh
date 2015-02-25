# Description: printf - Format and print data

# Notes
# 1. Conversion Specifications
    ╔═══════════╦═══════════════════════════════════════════════════════════════╗
    ║  Format   ║                                                               ║
    ║ Specifier ║                           Argument                            ║
    ╠═══════════╬═══════════════════════════════════════════════════════════════╣
    ║ d, i      ║ An integer, expressed as a decimal number.                    ║
    ║ o         ║ An integer, expressed as an unsigned octal number.            ║
    ║ x, X      ║ An integer, expressed as an unsigned hexadecimal number.      ║
    ║ u         ║ An integer, expressed as an unsigned decimal number.          ║
    ║ c         ║ An integer, expressed as a character.                         ║
    ║           ║ The integer corresponds to the character's ASCII code.        ║
    ║ s         ║ A string.                                                     ║
    ║ f         ║ A floating-point number, with a default precision of 6.       ║
    ║ e, E      ║ A floating-point number expressed in scientific notation,     ║
    ║           ║ with a default precision of 6.                                ║
    ║ p         ║ A memory address pointer.                                     ║
    ║ %         ║ Print the literal % (Percent sign).                           ║
    ║ %b        ║ Print ARGUMENT as a string with "\" escapes interpreted as    ║
    ║           ║ listed above, with the exception that octal escapes take the  ║
    ║           ║ form \0 or \0NN.                                              ║
    ╚═══════════╩═══════════════════════════════════════════════════════════════╝

# 2. Width Specifications
    ╔═══════════╦════════════════════════════════════════════════════════════════════════════════╗
    ║ Character ║                                  Description                                   ║
    ╠═══════════╬════════════════════════════════════════════════════════════════════════════════╣
    ║ -         ║ A minus sign to left-adjust the conversion of the argument.                    ║
    ║ number    ║ An integer to specify field width. The printf will print a conversion of       ║
    ║           ║ ARGUMENT in a field at least number characters wide. If necessary it will be   ║
    ║           ║ padded on the left (or right, if left-adjustment is called for) to make up the ║
    ║           ║ field width.                                                                   ║
    ║ .         ║ A period to separate the field width from the precision.                       ║
    ║ number    ║ An integer, the precision, to specify maximum number of characters to be       ║
    ║           ║ printed from a string, or the number of digits after the decimal point of a    ║
    ║           ║ floating-point value, or the minimum number of digits for an integer.          ║
    ║ h or l    ║ To differentiate between a short and a long integer, respectively.             ║
    ╚═══════════╩════════════════════════════════════════════════════════════════════════════════╝

# 3. Escape Sequence or Control Characters
    ╔════════════╦══════════════════════════════════════════════════════════════════╗
    ║ Character  ║                           Description                            ║
    ╠════════════╬══════════════════════════════════════════════════════════════════╣
    ║ \"         ║ double quote                                                     ║
    ║ \\         ║ backslash                                                        ║
    ║ \a         ║ alert (BEL)                                                      ║
    ║ \b         ║ backspace                                                        ║
    ║ \c         ║ produce no further output                                        ║
    ║ \e         ║ escape (ASCII Code 27)                                           ║
    ║ \f         ║ form feed                                                        ║
    ║ \n         ║ new line                                                         ║
    ║ \r         ║ carriage return                                                  ║
    ║ \t         ║ horizontal tab                                                   ║
    ║ \v         ║ vertical tab                                                     ║
    ║ \NNN       ║ byte with octal value NNN (1 to 3 digits)                        ║
    ║ \xHH       ║ byte with hexadecimal value HH (1 to 2 digits)                   ║
    ║ \uHHHH     ║ Unicode (ISO/IEC 10646) character with hex value HHHH (4 digits) ║
    ║ \UHHHHHHHH ║ Unicode character with hexadecimal value HHHHHHHH (8 digits)     ║
    ╚════════════╩══════════════════════════════════════════════════════════════════╝

# Common Examples
printf "%s\n" "Hello World"

# Examples with details
printf Hello World                  # Print Hello and quits after first space.
printf "Hello World"                # Print the full string Hello World but does not print newline character.
printf "Hello World\n"              # Equivalent to the command 'echo Hello World'.
printf "%s\n" "Hello World"         # Same as above.
printf "%s\n" "One" "Two" "Three"   # The format string is applied to each argument and prints 3 lines.

# Cool Tricks
# None

# TODO
# 1. Add more examples.
