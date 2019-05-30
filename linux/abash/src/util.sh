# Description: Utilities Library

########################################################################################################################
# Purpose: Prints a message and exits
# Arguments
#   $1: Message to be printed
#   $1: Exit error code
# Return Values: None
# Note
#   - Usage: error_exit "Message to print" 23
########################################################################################################################
function error_exit {
    local error_message="${1}"
    local error_code="${2}"

    echo "${error_message}"
    exit "${error_code}"
}

function reset_function_values {
    FUNCTION_RETURN_VALUE=''
    FUNCTION_RETURN_MESSAGE=''
}
