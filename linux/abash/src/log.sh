# Description: Log Library

########################################################################################################################
# Purpose: Echo Timestamp<TAB> before the message
# Arguments
#   $1: Message
# Return Values: None
# Note
#   - Usage: echo_time "Message to print"
########################################################################################################################
function echo_time() {
    # Robust and portable (POSIX) way to do log time with echo
    # Allows for % to stay unprocessed as an argument.
    # Timestamp Format: YYYY-MM-DD HH:MM:SS
    date +"%F %H:%M:%S	$(printf "%s " "$@" | sed 's/%/%%/g')"
}

########################################################################################################################
# Purpose: Log message to a log file
# Arguments
#   $1: [INFO|WARNING|ERROR]
#   $2: script_name
#   $3: function_name
#   $4: 'Log message'
# Return Values: None
# Note
#   - Usage: log 'INFO' "$0" '${FUNCNAME[0]}' 'Log file content'"
########################################################################################################################
function log () {
    if [ $# -ne 4 ]
    then
        echo "${FUNCNAME[0]}: ${MESSAGE_ERROR_WRONG_NUMBER_OF_ARGUMENTS}"
        return ${ERROR_WRONG_NUMBER_OF_ARGUMENTS}
    fi

    local log_level=$1
    local log_script=$2
    local log_function=$3
    local log_message=$4

    echo_time "${log_level}	${log_script}	${log_function}	${log_message}"
}
