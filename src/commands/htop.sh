# Description: htop -  interactive system-monitor process-viewer
#Installation: sudo apt-get install htop

# Notes
# Interactive Commands
The following commands are supported while in htop:
Arrows, PgUP, PgDn, Home, End. 

# Common Examples
htop
htop -u root 

# Examples with details

htop -d x					# x is numerical value to refresh o/p of htop in thenths of seconds.
htop-s --sort COLUMN				# Sort the output based on COLUMN.						
htop --no-color					# Run htop in monochrome mode.
htop --user=USERNAME				# Display processes for the user with this USERNAME only.
htop -v --version 				# Display htop version and exit.




# Cool Tricks
# None

# TODO 
See Also:
proc,top,free,ps,uptime
# None
