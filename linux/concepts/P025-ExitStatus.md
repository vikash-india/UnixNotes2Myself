# Description: Exit Status

### Exit Status
* Every command returns an exit status.
* Exit status ranges from 0 to 255.
* 0 means success.
* Any exit status other than 0 means error condition.
* $? contains the exit status or return code of the previously executed command.

### Exit Status of ls Command
```
# Read man pages of ls to understand the exit status of ls command. 
ls /path/to/non/existent/file
echo $?
```

### Exit Status in a Script
```
HOST="google.com"
ping -c 1 ${HOST}
RETURN_CODE="$?"

if [ "${RETURN_CODE}" -eq "0" ]
then
    echo "${HOST} reachable."
else
    echo "${HOST} unreachable."
fi
```

### TODO
* None
