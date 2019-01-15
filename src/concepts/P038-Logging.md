# Description: Logging in Bash Script

### Logging
* Log the 5Ws: Log about Who, What, When, Where and Why.

### Linux Syslog
* The syslog standard uses facilities and severities to categorize messages.
* Facilities: kern, user, mail, daemon, auth, local0, local7.
* Severities: emerg, alert, crit, err, warning, notice, info, debug.
* Log File Locations
```
/var/log/messages
/var/log/syslog
```

### Logging to Syslog
* The logger utility is available on path `/usr/bin/logger`.
* By default logger creates user.notice messages.
``` 
logger "Message"
Aug 23 01:22:34 linuxserver dilbert: Message

logger -p local0.info "Message"
Aug 23 01:22:34 linuxserver dilbert: Message

logger -s -p local0.info "Message"
dilbert: Message                                    # <------- Displayed on screen.

logger -t myscript -p local0.info "Message"
Aug 23 01:22:34 linuxserver myscript: Message       # <-------- Shows tag myscript instead of user dilbert.

logger -i -t myscript "Message"
Aug 23 01:22:34 linuxserver myscript[123943]: Message
```

### Logging to File
``` 
# Log Function
log() {
    local LOG_LEVEL=$1
    shift
    MESSAGE=$@
    TIMESTAMP=$(date +"%Y-%m-%d %T")
    
    if [ $LOG_LEVEL = 'ERROR' ] || $VERBOSE
    then
        echo "${TIMESTAMP} ${HOST} ${PROGRAM_NAME}[$PID]: ${LOG_LEVEL} $MSG"
    fi
}

# Calling the log function
log "INFO" "Reading configuration file."
log "ERROR" "Error reading file."
```

### TODO
* None
