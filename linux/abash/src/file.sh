# Description: File Library

########################################################################################################################
# Purpose: Check if directory exists
# Arguments
#   $1: /absolute/or/relative/path/to/a/directory
# Return Values
#   - TRUE (0) if the argument is an existing directory
#   - FALSE (1) if the argument is not an existing directory
# Note
#   - Usage: directory_exists 'path/to/directory'
########################################################################################################################
function directory_exists () {
    local script_name=$( basename "$0" )
    local message=

    if [ $# -ne 1 ]
    then
        echo "${FUNCNAME[0]}: ${MESSAGE_ERROR_WRONG_NUMBER_OF_ARGUMENTS}"
        return ${ERROR_WRONG_NUMBER_OF_ARGUMENTS}
    fi

    local file_path="$1"

    if [[ ! -d "${file_path}" ]]
    then
        message=$( printf "Directory does not exist [dir=%s]." "${file_path}" )
        echo "${FUNCNAME[0]}: ${message}"
        exit 244
    fi

    exit 23
}