#!/bin/bash

# Description: Script to backup '<everything>' on '<source>' to '<destination>'

# Imports
LIB_PATH="./../../../lib"       # Without trailing slash
source "$LIB_PATH/logutils"     # For log utils
source "$LIB_PATH/fileutils"    # For file utils

# Start Logging
LOG_FILE="backups.log"
log $LOG_FILE $LOG_LEVEL_INFO $LOG_TAG 'Started syncing "<Everything>" on <source> to "<Everything>" on <destination>.'

# Destination Directory
# TODO: Modify
DESTINATION_DIR='/tmp/backups/'
check_if_directory_exists "$DESTINATION_DIR"

################################################################################ SYNC Source to Destination
# TODO: Modify
# Important: The trailing slash
SOURCE_PATHS=(
    '/tmp/test_backup/Directory1/'
    '/tmp/test_backup/Directory2/'
    '/tmp/test_backup/Dir With Special Characters/'
)

for source_path in "${SOURCE_PATHS[@]}"
do
    source_basename=`basename "$source_path"`
    destination_path="$DESTINATION_DIR$source_basename"

    log_message="Syncing '$source_path' to '$destination_path'"
    log $LOG_FILE $LOG_LEVEL_INFO $LOG_TAG "$log_message"

    check_if_directory_exists "$source_path"

    rsync -avs --delete -i --dry-run "$source_path" "$destination_path"

    read -p "Do you want to continue (y/n)? " -n 1 -r
    echo # (Optional) move to a new line after input
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "TODO: Uncomment the below line after testing!"
        # rsync -avs --delete -i "$source_path" "$destination_path"
    fi
done

################################################################################ MOVE Source to Destination
# Important: The trailing slash
SOURCE_PATHS=(
    '/tmp/test_backup/Move Directory 1/'
    '/tmp/test_backup/Move Directory 2/'
)

for source_path in "${SOURCE_PATHS[@]}"
do
    source_basename=`basename "$source_path"`
    destination_path="$DESTINATION_DIR$source_basename"

    log_message="Syncing '$source_path' to '$destination_path'"
    log $LOG_FILE $LOG_LEVEL_INFO $LOG_TAG "$log_message"

    check_if_directory_exists "$source_path"

    rsync -avs --remove-source-files -i --dry-run "$source_path" "$destination_path"

    read -p "Do you want to continue (y/n)? " -n 1 -r
    echo # (Optional) move to a new line after input
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "TODO: Uncomment the below line after testing!"
        # rsync -avs --remove-source-files -i "$source_path" "$destination_path"
    fi
done

# End Logging
log $LOG_FILE $LOG_LEVEL_INFO $LOG_TAG 'Finished syncing "<Everything>" on <source> to "<Everything>" on <destination>.'
