# Description: chgrp - This command stands for change group. Used to change group permissions.

# NOTES:
#  1. generally used by unprivileged users to change the group associated with a file system object.
#  2. File System Object (FSO) - file, directory, link. A FSO has 3 sets of access permissions - USER, GROUP, OTHERS
#  3. It basically affects the write permissions.
#  4. chgrp allows regular users to change groups, but only to one of which they are a member

# Syntax
	
	chgrp [options] files/directories

# Common Examples

# 'myfile' --> Suppose the original access permission of 'myfile' is of users
# The below set of 2 commands are to be executed one by one
 chgrp admins myfile		# the group owner of 'myfile' changes to admin from users
 chgrp users myfile		# the group owner of 'myfile' changes to users from admin

chgrp oracleadmin /usr/database	# to make oracleadmin the owner of the database directory

chgrp staff /u			# change the group of /u to staff
chgrp -c staff /u		# -c desccribes the action for /u when its group changes
chgrp --changes staff /u	# -----------------do--------------------
chgrp -f staff /u		# -f specifies to not print the error messages about files whose group cannot be changed
chgrp --silent staff /u		#	-------do-------
chgrp --quiet staff /u		#	-------do-------
chgrp --no-dereference staff /u	# Affect each symbolic links instead of any referenced file.
chgrp -h staff /u		#	-----do-----
chgrp --reference=FILE1 file2  	# It first determines the group of FILE1 and sets the group of file2 same as the group of FILE1
chgrp -v staff /u		# -v output a diagnostic for every file processed
chgrp --verbose staff /u	#	-----do-----
chgrp -R staff /u		# operates on files and directories recursively

# Below provided options modify how a hierarchy is traversed when the -R option is also specified. 
# If more than one is specified , only the final one takes effect.
chgrp -HR staff /u		# if a command line argument is a symbolic link to a directory, traverse it
chgrp -HL staff /u		# traverse every symbolic link to a directory encountered
chgrp -HP staff /u 		# do not traverse any symbolic links encountered
