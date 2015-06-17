# Description: Hello World in Unix Shell Script

# Steps to write and execute a shell script
# 1. Use any text editor (say vim) to create a shell script and save it to a file.
# 2. Add the first line of the shell script as follows
#               #!/bin/bash
#    When the shebang, !#, is the first two bytes of an executable file, it is interpreted by the execve(2) system call
#   (which execute programs). It must be followed by an absolute path of an interpreter executable.
# 3. Complete the script by adding more code.
# 4. Add the last line of the shell script as follows and save the file
#				exit 0
# 5. Set appropriate execute permission for the script
#               chmod +x script-name
#				chmod 755 script-name
# 	 The 755 permission allows read/write/execute(7) for the owner, and read/execute(5) for the group & others.
# 6. Execute the script using any of the following ways
#               sh path/to/script/file
# 		        bash path/to/script/file
#               source path/to/script/file
#               . /path/to/script/file   # Dot (.) followed by a space executes the script in the current shell.
# 		        ./path/to/script/file    # Dot (.) without a space before / means current directory.

# More lines in a script
echo "Hello World"

exit 0
