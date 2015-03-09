# Description: watch - execute a program periodically, showing output fullscreen

# Notes
# 1. The watch command will continue to run until it is terminated by CTRL-C or by closing the console.

# Common Examples
watch -d -n 5 date
watch -d -n 5 "ps -eo pid,%cpu,%mem,comm --sort=-pcpu | head -10"
watch -d -n 5 "free -om; yes = | head -80 | paste -s -d '' -; df -h"

# Examples with details
watch date                  # Run date command repeatedly, displaying  its  output and errors (the first screenfull).
                            # By default, the program is run every 2 seconds.
watch -n 5 date             # Use -n switch to specify the delay in seconds. Watches date command every 5 seconds.
watch -d date               # Use -d or --difference switch to highlight the differences between successive updates.
watch -d=cumulative date    # Use -d=cumulative switch to make the highlighting sticky ie all positions that have ever
                            # changed remain highlighted.
watch -t date               # Use -t or --no-title switch to turn off the header showing the interval, command, and
                            # current time at the top of the display, as well as the following blank line.
watch "ps -ef | grep http"  # Use single or double quotes to watch piped commands so that so that watch will act on the
                            # output of the entire pipeline (rather than act just on the first command in it and then
                            # pipe its output to the next command).
watch -h                    # Use -h or --help switch to display help text and exit.
watch -v                    # Use -v or --version switch to display version information and exit.

# Cool Tricks
# 1. Watch top 10 CPU intensive processes every 5 seconds and keep the changes highlighted.
watch -d -n 5 "ps -eo pid,%cpu,%mem,comm --sort=-pcpu | head -10"

# 2. Watch the following commands every 5 seconds and keep the changes highlighted.
# - Display used & free memory details.
# - Print the character equal to (=) 80 times.
# - Display available disk space.
watch -d -n 5 "free -om; yes = | head -80 | paste -s -d '' -; df -h"

# TODO
# None
