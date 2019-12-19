# Description: xargs: It is used to remove or do some operation on long list of file names which were produced by "find" & "grep" commands.


# Notes
#UNIX operating system doesn't accept such a long list of argument.UNIX xargs command divide that list into sub-list with acceptable length and made it work.


# Common Examples
 

# Examples with details

echo a b c d e f| xargs -n 3					# Outputs a b c
									  d e f ; Splitting the input into number of specified columns.

echo a b c d e f| xargs -p -n 2					# Promts the user whether to execute the command or not.

find . -name "*.c" | xargs rm -rf				# Using with find command, find all ".c" files and deletes them.

xargs --show-limits						#  Displays all the limits set by the OS that will have an impact on the    			                                                    way how xargs command works.



# Cool Tricks
# None

# TODO
See also link
# None
