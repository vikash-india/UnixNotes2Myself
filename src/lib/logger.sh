# Description: Logger

log () {

    if [ $# -ne 3 ]
    then
        echo "Error: Invalid number of arguments!"
        echo "Usage: 'log path/to/log/file' 'Log Tag' 'Log message'"
        echo "Example: log '/home/dilbert/logs/file.log' 'logger.sh' 'Log file content'"
    fi

    log_filepath=$1
    log_tag=$2
    log_message=$3

    echo "`date '+%F %H:%M:%S'`	$log_tag  $log_message" >> "$log_filepath"
}
