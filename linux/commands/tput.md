# Description: The tput Command

### Notes
* The tput Command - initialize a terminal or query terminfo database.

### Common Examples
```shell
tput reset
tput cup 0 0
```

### Examples With Details
```shell
tput clear          # Clears the screen. Same as Ctrl-l.
tput reset          # Same as clear.
tput cup 0 0        # Takes the cursor to row 0,  column 0 WITHOUT clearing the screen.
tput cols           # Print the number of columns for the current terminal.
tput longname       # Print the long name from the terminfo database for the type of terminal specified in the
                    # environmental variable TERM.
tput -V             # Display the version of ncurses which was used in this program, and exits.
```

### Cool Tricks
* An example to show tput processing several capabilities in one invocation. It clears the screen, moves the cursor
  to position 10, 10 and turns on bold (extra bright) mode. The list is terminated by an exclamation mark (!) on a
  line by itself.
```shell
tput -S <<!
> clear
> cup 10 10
> bold
> !
```

* Get current height and width of the terminal and adjust the Terminal settings to get a maximised window on startup.
```bash
tput lines      # 54. Get the height.
tput cols       # 205. Get the height.
```

### TODO
* Explore tset and reset commands.
