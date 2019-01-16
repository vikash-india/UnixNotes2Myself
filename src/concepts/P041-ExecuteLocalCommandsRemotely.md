# Description: Executing Local Commands Remotely

### Note
* Setup SSH config equivalent to `ssh -i /path/to/rsa_id user@host`. Let the config name be `linuxserver`.

### Executing a Single Command
```
# A single command with options and spaces
ssh -i /path/to/rsa_id user@host ls -al /etc

# Use quotes
ssh -i /path/to/rsa_id user@host 'ls -al /etc'

# Use SSH config
ssh linuxserver 'ls -al'
```

### Executing Multiple Commands
``` 
# Execute multiple commands remotely 
ssh linuxserver "ls -al /tmp; pwd"
ssh linuxserver 'ls -al /tmp; pwd'

# ERROR: The pwd command will be executed locally instead of remotely.
ssh linuxserver ls -al /tmp; pwd
```

### Executing a Command with Sudo Using `-t` Option
* The `-t` option allows pseudo-terminal allocation since `sudo` command requires interactive terminal.
```
ssh linuxserver sudo ls /root
# Output
# sudo: no tty present and no askpass program specified

# Sudo requires interactive shell which can be enabled using -t parameter.
ssh -t linuxserver sudo ls /root
```

### Executing Simple Multiline Commands WITHOUT Variable Expansion
``` 
VAR1="Variable 1"

# Start of SSH Command
ssh linuxserver '
ls
pwd
if true; then
    echo "True"
    echo $VAR1      # <-- ERROR: It won't work
else
    echo "False"
fi
'
```

### Multi-line Command With Variables Expansion Using `bash -c` 
* Use `bash -c` to force variables expansion.
``` 
VAR1="Variable 1"

# Start of SSH Command
ssh linuxserver bash -c "'
ls
pwd
if true; then
    echo $VAR1
else
    echo "False"
fi
'"
```

### Multi-line Command From Local Script Using STDIN
* A local script can be executed against remote machine with a simple stdin redirection.
* Use absolute path of the script.
``` 
# Script Content
cat script.sh
ls -al
pwd
hostname

# Multi-line Command from local script through STDIN
# Use absolute path of the script.
ssh linuxserver < script.sh
```

### Multi-line Command Using Heredoc
* Using heredoc is probably the most convenient way to execute multi-line commands on a remote machine. 
* Also, the variables expansion works out-of-the-box.
* The following warning message can be disabled by adding -T parameter to ssh execution.
    > Pseudo-terminal will not be allocated because stdin is not a terminal.

``` 
VAR1="boo"
ssh -T linuxserver << EOSSH
ls
pwd
if true; then
  echo $VAR1
else
  echo "False"
fi
EOSSH

# If you need to assign variables within the heredoc block, put the opening heredoc in single quotes.
ssh -T linuxserver <<'EOSSH'
VAR1=`pwd`
echo $VAR1

VAR2=$(uname -a)
echo $VAR2

EOSSH
```

### Cool Tricks
``` 
# Edit a remote file
# Once the remote file is closed, the ssh session will be terminated.
ssh -t linuxserver vim /absolute/path/to/file

# Htop requires interactively
ssh -t linuxserver htop
```

### TODO
* Try the following
``` 
# Multi-line Command Using `bash -s`
# TODO: Find the difference between -c and -s 
ssh linuxserver 'bash -s' < script.sh
```
