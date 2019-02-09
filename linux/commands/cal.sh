# Description: cal, ncal - Displays a calendar and the date of Easter

# Notes
# 1. The ncal command is similar to cal and offers an alternative layout, more options and the date of Easter.
#    The new format is a little cramped but it makes a year fit on a 25x80 terminal.
# 2. Not all options can be used together. For example, the options -y, -3, and -1 are mutually exclusive. If
#    inconsistent options are given, the later ones take precedence over the earlier ones.

# Common Examples
cal
cal -3
cal -y
cal 2000
cal 4 2010
cal Apr 2014
cal -A2 -B2

# Examples with details
cal                     # Displays the current month calendar. Equivalent to cal -1.
cal -y                  # Display current year calendar.
cal -3                  # Displays the previous, current and next month calendar.
cal -A2                 # Months to add after.
cal -B3                 # Months to add before.
cal 2000                # Display calendar for year 2000. Year can be from 1 to 9999.
cal 4 2010              # Display calendar for April - 2010.
cal 04 2010             # Same as above.
cal Apr 2010            # Same as above.
cal April 2010          # Same as above.
cal -m April            # Display the specified month.
cal -m4                 # Same as above. If month is specified as a decimal number, it may ‘f’ or ‘p’ to
                        # indicate the following or pre‐ceding month of that number.
cal -j Feb 2014         # Display Julian dates (days one-based, numbered from January 1).
cal -h                  # Turns off highlighting of today.
cal -N                  # Switch to ncal mode.
ncal -C                 # Switch to cal mode.
ncal -S                 # Display Sunday as the first day of week.
ncal -M                 # Display Monday as the first day of week.

# Cool Tricks
# None

# TODO
# 1. Explore calendar command.
