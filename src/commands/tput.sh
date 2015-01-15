# Description: tput - initialize a terminal or query terminfo database

# Notes:
# 1. None

# Common Examples
tput reset
tput cup 0 0

# Examples with details
tput clear          # Clears the screen. Same as Ctrl-l.
tput reset          # Same as clear.
tput cup 0 0        # Takes the cursor to row 0,  column 0 WITHOUT clearing the screen.
tput cols           # Print the number of columns for the current terminal.
tput longname       # Print the long name from the terminfo database for the type of terminal specified in the
                    # environmental variable TERM.
tput -V             # Display the version of ncurses which was used in this program, and exits.

# Cool Tricks
# 1. An example to show tput processing several capabilities in one invocation. It clears the screen, moves the cursor
#    to position 10, 10 and turns on bold (extra bright) mode. The list is terminated by an exclamation mark (!) on a
#    line by itself.
tput -S <<!
> clear
> cup 10 10
> bold
> !

# TODO
# 1. Explore tset and reset commands.
