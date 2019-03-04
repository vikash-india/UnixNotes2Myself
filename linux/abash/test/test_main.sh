# Description: Sample Usage of Abash Library

# Include abash library
source ${ABASH_DIR}/main.sh

# Usage of date.sh
get_current_date
get_today
get_yesterday
get_tomorrow
get_current_timestamp

# Usage of file.sh
echo
echo "Using directory_exists"
directory_exists                    && echo "No Arguments: TRUE"            || echo "No Arguments: FALSE"
directory_exists '/tmp/nofile.txt'  && echo "Non Existent File Path: TRUE"  || echo "Non Existent File Path: FALSE"
directory_exists '/tmp/file.txt'    && echo "Existent File Path: TRUE"      || echo "Existent File Path: FALSE"
directory_exists '/tmp'             && echo "Directory Path: TRUE"          || echo "Directory Path: FALSE"

#echo
#echo "Using contains_invalid_ntfs_characters"
# contains_invalid_ntfs_characters "/tmp" && echo "TRUE" || echo "FALSE"

# Usage of log.sh
echo
echo "Using echo_time"
echo_time "Hello World"

echo
echo "Using log"
script_name=$( basename "$0" )                                          # Just get the script name from the full path
log 'INFO' "${script_name}" "${FUNCNAME[0]}" 'Log message goes here.'   # "${FUNCNAME[0]}" will be main if not in a function
log 'INFO' "${script_name}" "${FUNCNAME[0]}" 'Log message goes here.'
log 'INFO' "${script_name}" "${FUNCNAME[0]}" 'Log message goes here.'

# Usage of string.sh

# Others
