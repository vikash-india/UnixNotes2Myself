# Description: Advanced Password Generator

# Notes
# 1. The apg utility needs to be installed using the command `sudo apt-get install apg`.

# Common Examples
sudo apt-get install apg        # Install apg

# Examples with details
apg -a1 -n10 -m12 -Msncl        # Use the option -a1 to specify algorithm as random.
                                # Use the option -n10 to specify minimum number of passwords to be generated as 10.
                                # Use the option -m12 to specify the minimum length of the password as 12.
                                # Use the option -Msncl to include special character(s), numbers(n), capital letters(c)
                                # and lower case letters(l) in the generated passwords.

# Cool Tricks
# None

# TODO
# None
