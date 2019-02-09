# Description: Exit Command

### Exit Command
* Use the exist command to explicitly define the return code.
* The default value of the last command executed is returned if the script does not have any exit command.

### Exit Command in a Script
```
HOST="google.com"
ping -c 1 ${HOST}
RETURN_CODE="$?"

if [ "${RETURN_CODE}" -eq "0" ]
then
    echo "${HOST} reachable."
else
    echo "${HOST} unreachable."
    exit 1
fi
exit 0
```

### TODO
* None
