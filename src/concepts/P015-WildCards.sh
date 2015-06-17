# Description: Wildcards or Meta Characters in Unix Shell Scripts

# Notes:
# *				- Matches any string or group of characters.
# ? 			- Matches any single character.
# [...]			- Matches any one of the enclosed characters.
# [..-..]		- A pair of characters separated by a minus sign denotes a range.
# [!..] / [^..]	- Set negation: If the first character following the [ is a ! or a ^ ,then any character not enclosed
#				  is matched.

# Show file names beginning with a,b or c
ls /bin/[a-c]*	#

# Do not show file names beginning with a,b,c,e...o
ls /bin/[!a-o]*

# Do not show file names beginning with a,b,c,e...o
ls /bin/[^a-o]*

exit 0
