# Description: Date Library

########################################################################################################################
# Purpose: Return current date in YYYY-MM-DD format
# Arguments: None
# Return Values: None
########################################################################################################################
get_current_date () {
	date '+%F'
}

########################################################################################################################
# Purpose: Return Today's date in YYYY-MM-DD format
# Arguments: None
# Return Values: None
########################################################################################################################
get_today () {
    get_current_date
}

########################################################################################################################
# Purpose: Return Yesterday's date in YYYY-MM-DD format
# Arguments: None
# Return Values: None
########################################################################################################################
get_yesterday () {
    echo "${FUNCNAME[0]}: ${MESSAGE_ERROR_NOT_IMPLEMENTED}"
    return "${ERROR_NOT_IMPLEMENTED}"
}

########################################################################################################################
# Purpose: Return Tomorrow's date in YYYY-MM-DD format
# Arguments: None
# Return Values: None
########################################################################################################################
get_tomorrow () {
    echo "${FUNCNAME[0]}: ${MESSAGE_ERROR_NOT_IMPLEMENTED}"
    return "${ERROR_NOT_IMPLEMENTED}"
}

########################################################################################################################
# Purpose: Return Current timestamp in YYYY-MM-DD HH:MM:SS format
# Arguments: None
# Return Values: None
########################################################################################################################
get_current_timestamp () {
	date '+%F %T'
}
