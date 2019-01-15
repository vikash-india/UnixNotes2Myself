# Description: Debugging in Bash Script

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

### TODO
* Check `help set | less` for details.
