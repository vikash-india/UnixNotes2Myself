# Description: script - Make typescript of terminal session

# Notes
# None

# Common Examples
script -a typescript.log
script -c ls

# Examples with details
script              # Starts an interactive typescript session by writing everything typed into the terminal to a file
                    # called typescript. Type exit or CTRL-D to come out.
script -c ls        # Run the command ls and capture its output in the typescript instead of starting an interactive
                    # shell.
script log          # Write to the file 'log' instead of the default file 'typescript'.
script -a log       # Use -a switch to make typescript by appending to the file log instead of overwriting it.
script -f -a log    # Use -f switch to flush output after each write. One user executes "mkfifo foo; script -f foo" on
                    # a terminal,
                    # and another user from a REMOTE terminal can watch the file in realtime using the command
                    # 'cat foo'.

# Cool Tricks
# None

# TODO
# None
