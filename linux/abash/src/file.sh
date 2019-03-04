# Description: File Library

########################################################################################################################
# Purpose: Check if directory exists
# Arguments
#   $1: /absolute/or/relative/path/to/a/directory
# Return Values
#   - TRUE (0) if the argument is an existing directory
#   - FALSE (1) if the argument is not an existing directory
# Note
#   - Usage: check_if_directory_exists 'path/to/directory'
########################################################################################################################
function directory_exists () {

    if [ $# -ne 1 ]
    then
        echo "${FUNCNAME[0]}: ${MESSAGE_ERROR_WRONG_NUMBER_OF_ARGUMENTS}"
        return ${ERROR_WRONG_NUMBER_OF_ARGUMENTS}
    fi

    local file_path="$1"
    if [ -d "${file_path}" ]; then
        return ${TRUE}
    fi

    return ${FALSE}
}

########################################################################################################################
# Purpose: Check if the file path contains any of the 8 NTFS invalid characters
# Arguments
#   $1: 'path/to/directory/'
# Return Values
#   - TRUE (0) if the argument is an existing directory
#   - FALSE (1) if the argument is not an existing directory
# Note
#   - Usage: contains_invalid_ntfs_characters 'path/to/directory/or/file'
#   - Looks for 8 invalid NTFS characters: < or > or : or " or \ or | or * or ?
########################################################################################################################
function contains_invalid_ntfs_characters () {

    if [ $# -ne 1 ]
    then
        echo "${FUNCNAME[0]}: ${MESSAGE_ERROR_WRONG_NUMBER_OF_ARGUMENTS}"
        return ${ERROR_WRONG_NUMBER_OF_ARGUMENTS}
    fi

    local file_path="$1"

    # Invalid NTFS Characters
    # <
    # >
    # :
    # "
    # \
    # |
    # *
    # ?

    message="Checking for 8 invalid NTFS characters: < or > or : or \" or \ or | or * or ?  in file path [path=$file_path]."
    echo "$message"

    found_count=$(find "$file_path" -type f -regex '.*\(<\|>\|:\|"\|\\\||\|*\|?\).*' | wc -l)
    if (( $found_count > 0 ))
    then
        message="Invalid NTFS characters found in $found_count files. Please fix them before proceeding."
        echo "$message"

        find "$file_path" -type f -regex '.*\(<\|>\|:\|"\|\\\||\|*\|?\).*'

        return "${FALSE}"
    else
        message="No invalid NTFS characters found."
        echo "$message"

        return "${TRUE}"
    fi
}
