# Description: Validate Syntax of Bash Script

### Syntax Validation Using Bash
* Check the syntax of a bash script using 'bash -n'.
* This will ONLY check syntax and wont check for the following
    - It will not check if the bash script tries to execute a command that isn't on the path. Eg. `ech hello` instead of 
      `echo hello`.
    - It will NOT catch an error caused by a missing space. Eg. `if ["$var" == "string" ]` instead of 
      `if [ "$var" == "string" ]`
* These checks should be performed through test programs.
```
bash -n scriptname
```

### Syntax Validation Using IDE
* Syntax of a bash script can be done by using IDEs with bash syntax highlighting plugins.
    -  BashSupport plugin for IntelliJ IDEA

### Added Syntax Validation Using `set -u`
* Use `set -u` to find uninitialised scripts or typos.
``` 
set -u

# script.sh
#!/bin/sh
set -u
message=hello
echo $mesage

# Outpuit
./script.sh
./script.sh[4]: mesage: Parameter not set.
```

### TODO
* None
