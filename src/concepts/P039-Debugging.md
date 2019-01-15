# Description: Debugging in Bash Script

### Ways to Debug Bash Scripts
* Debug using built-in bash option `-x`.
* Debug using built-in bash option `-e`.
* Debug using built-in bash option `-v`.
* Debug using variables like DEBUG.
* Debug manually.
* Debug using special variable PS4.
* Debug using file types.
* Debug using an editor like vim which has syntax highlighting.

### Debug Using Built-in Bash Options `-x` 
* The `-x` options prints the commands as they execute.
* It prints after substitutions and expansions.
* Called an x-trace, tracing, or print debugging.
* Script Debugging: Setup debugging for the entire script using `#!/bin/bash -x` at the beginning.
``` 
#!/bin/bash -x
VAR="Testing debug"
echo "$VAR"

# Output
+ VAR=Testing Debug
+ echo Testing Debug
Testing Debug
```
* Selective Debugging: Switch on debug using `set -x` or switch off debugging using `set +x` for on selective code.
``` 
#!/bin/bash -x
VAR="Testing debug"
set -x
echo "$VAR"
set +x
hostname

# Output
+ echo Testing Debug
Testing Debug
linuxserver
```

### Debug Using Built-in Bash Options `-e` 
* Use the `-e` option exits on error.
* The `-e` options can be combined with other options.
``` 
#!/bin/bash -ex
#!/bin/bash -xe
#!/bin/bash -e -x
#!/bin/bash -x -e
```
* Usage of `-e` Option
```
#!/bin/bash -e

FILE_NAME="/path/does/not/exist"
ls ${FILE_NAME}
echo ${FILE_NAME}

# Output
ls: cannot access /path/does/not/exist: No such file or directory.
```
* Usage of `-ex` Option
```
#!/bin/bash -ex

FILE_NAME="/path/does/not/exist"
ls ${FILE_NAME}
echo ${FILE_NAME}

# Output
FILE_NAME=/path/does/not/exist
ls /path/does/not/exist
ls: cannot access /path/does/not/exist: No such file or directory.
```

### Debug Using Built-in Bash Options `-v`
* The `-v` option prints shell input lines as they are read.
* This option can be combined with other options.
``` 
#!/bin/bash -vex
#!/bin/bash -v -e -x
etc.
```
* Usage of `-v` Option
``` 
#!/bin/bash -v
VAR="Testing debug"
echo "$VAR"

# Output
VAR="Testing debug"
echo "$VAR"
Testing Debug
```
* Usage of `-vx` Option
``` 
#!/bin/bash -v
VAR="Testing debug"
echo "$VAR"

# Output
VAR="Testing debug"
+ VAR=Testing Debug
echo "$VAR"
+ echo Testing Debug
Testing Debug
```

### Debug Using Variables Like DEBUG 
* Use a special variable like DEBUG.
    - DEBUG=true
    - DEBUG=false
* Usage of DEBUG variable
``` 
# Example 1
DEBUG=true
if $DEBUG
then
    echo "Debug mode ON."
else
    echo "Debug mode OFF."
fi

# Example 2
DEBUG=true
$DEBUG && echo "Debug mode ON."

# Example 3
DEBUG=false
$DEBUG || echo "Debug mode OFF."

# Example 4
DEBUG=true
$DEBUG || echo "Debug mode OFF."

# Example 5
function debug() {
    echo "Execute: $@"
    $@
}
debug ls
```

### Debug Manually
* Open another terminal.
* Switch debugging on using `set -x` on the command line.
* Copy and paste the commands into the terminal.
* Debug the code.
* Switch debugging off using `set +x`.

### Debug Using Special Variable PS4
* PS4 controls what is displayed before a line when using the -x option.
* The default value is "+".
* Some of the useful bash variables
    - BASH_SOURCE
    - LINENO
    - FUNCNAME
* Examples
``` 
# Example 1
#!/bin/bash -x
PS4='+ $BASH_SOURCE : $LINENO'
VAR="Testing debug"
echo "$VAR"

# Output
+ ./script.sh : 3 : VAR=Testing Debug
+ ./script.sh : 4 : echo Testing Debug
Testing Debug

# Example 2
PS4='+ ${BASH_SOURCE} : ${LINENO} : ${FUNCNAME[0]}()'
function debug() {
    echo "Execute: $@"
    $@
}
debug ls

# Output
+ ./script.sh : 4 : debug() : ls
# Output of ls
```  

### Debug Using File Types
* Check for DOS or linux file types.
* Check for CRLF / Carriage Return, Line Feed.
```
# Use cat to display ^M characters if it is a DOS file.
cat -v /path/to/script.

# Check for CRLF using file command.
file script.sh
# Output
script.sh: ASCII text, with CRLF line terminators.

# Convert DOS file type to Linux file type
dos2unix script.sh
file script.sh
# Output
script.sh: ASCII text
```

### TODO
* Check `help set | less` for details.
