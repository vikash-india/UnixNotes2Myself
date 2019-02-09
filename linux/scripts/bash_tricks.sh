# Description: Cool Bash Tricks

# Notes
# None

################################################################################
# Play a random word from the dictionary on speaker
cat /usr/share/dict/words | head -n $RANDOM | tail -n 1 | say

# Explanation
echo $RANDOM                    # Special shell variable to generate random number.
say "Hello"                     # Play Hello on speaker.
head /usr/share/dict/words      # All the words from the dictionary.

################################################################################

# TODO
# None
