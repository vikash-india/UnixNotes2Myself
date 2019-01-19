# Description: Introduction To Bash

### Introduction to Unix Shells
1. The shell provides an interface to the UNIX system or kernel.
2. The shell takes the user inputs, pre-processes the inputs, executes the script based on the processed inputs and
   displays the output.
3. There are 2 types of shell
   1. The Bourne Shell: The default prompt is the $ character.
      - Bourne shell (sh)
      - Korn shell (ksh)
      - Bourne Again shell (bash)
      - POSIX shell (sh)
   2. The C Shell: The default prompt is the % character.
      - C shell (csh)
      - TENEX/TOPS C shell (tcsh)
4. The Bourne shell was the first shell to appear on UNIX systems and is often referred to as **"The shell"**. The
   Bourne shell is usually installed as /bin/sh on most versions of UNIX.

### First Bash Script
```
# Add the following code to the file script.sh and save it.
#!/bin/bash
echo "Hello to Scripting World!"

# Make the script executable
chmod 755 script.sh

# Execute the script
$ ./script.sh
```

### Shebang
- If a script does not contain the shebang the it will be executed in the current shell.
- Different shells have slightly different syntax.  
```
#!/bin/bash
echo "This script uses bash as the shell interpreter.

#!/bin/csh
echo "This script uses csh as the shell interpreter.

#!/bin/ksh
echo "This script uses ksh as the shell interpreter.

#!/bin/zsh
echo "This script uses zsh as the shell interpreter.

#!/bin/python
echo "This script uses python interpreter.
```

### Check Process Details of a Bash Script
```
# The script saved in the file script.sh
#!/bin/bash
sleep 120

# Execute the script in the background using &
chmod 755 script.sh
$ ./script.sh &

[1] 18006

# Check the process details
ps -fp 18006

UID        PID  PPID  C STIME TTY          TIME CMD
dilbert  18006  4150  0 13:53 pts/18   00:00:00 bash

# Alternate ways
ps -ef | grep 18006 | grep -v grep
pstree -p 18006 
```

### TODO
* None
