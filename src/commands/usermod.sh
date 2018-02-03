# Description: usermod - Modify a user account

# Notes
# None

# Common Examples
usermod -G dev calvin

# Examples with details
usermod -G dev calvin           # Add the user calvin to SECONDARY group dev
usermod -g dev calvin           # Add the user calvin to PRIMARY group dev
usermod -G dev,sales calvin     # Add user calvin to sales but also keep his existing membership of dev.

# Cool Tricks
# None

# TODO
# None
