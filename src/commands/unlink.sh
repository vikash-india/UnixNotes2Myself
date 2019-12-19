# Description: unlink : removes the specified file.


# Notes
#Deletes a name from the file system. If that name was the last link to a file and no processes have the file open the file is deleted and the space it was using is made available for reuse.

#If the name was the last link to a file but any processes still have the file open the file will remain in existence until the last file descriptor referring to it is closed.

#If the name referred to a symbolic link the link is removed 

# Common Examples
unlink FILENAME
 

# Examples with details

unlink filename1 filename2					# Removes the filename1, filename2  and if there is no other hard link to the 									  file data, the file data itself is removed from the system.

unlink --help							# Displays the help message and exits.

unlink --version						# Displays the version info and exits.




# Cool Tricks
# None

# TODO
See also link
# None
