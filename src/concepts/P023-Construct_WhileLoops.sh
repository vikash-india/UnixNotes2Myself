# Description: While Loop in Bash Script

# Note
# 1. The general syntax is
#     while [ CONDITION_IS_TRUE ]
#     do
#           # Code goes here.
#           # Command can change the condition.
#     done
# 2. Use break keyboard to break out of while loop.
# 3. Use continue keyword to go back to the start of the loop condition.

# Form 1: Loop N Times
INDEX=1
while [ ${INDEX} -lt 6 ]
do
    echo "${INDEX}"
    ((INDEX++))
done


# Form 2: Loop Based on User Input
echo
ANSWER="n"
while [ "${ANSWER}" != "y" ]
do
    read -p "Do you want to exit the loop (y/n)?: " ANSWER
done


# Form 3: Loop Based on Return Code of Command
echo
while ping -c 1 google.com > /dev/null
do
    echo "The server is REACHABLE."
    break
done


# Form 4: Loop To Read a File, Line by Line
echo
LINE_NUM=1
while read LINE
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done < /etc/fstab


# Form 5: Another Way to Loop To Read a File, Line by Line
echo
LINE_NUM=1
grep UID /etc/fstab | while read LINE
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done

# Form 6: Another Way to Loop To Read a File, Line by Line and Columns by Columns
echo
FILE_SYSTEM_NUM=1
grep "UID" /etc/fstab | while read GUID MOUNT_POINT FILE_SYSTEM REST_OF_LINE
do
    echo
    echo "${FILE_SYSTEM_NUM}: UID: ${GUID}"
    echo "${FILE_SYSTEM_NUM}: Mount Point: ${MOUNT_POINT}"
    echo "${FILE_SYSTEM_NUM}: File System: ${FILE_SYSTEM}"
    echo "${FILE_SYSTEM_NUM}: Rest of Line: ${REST_OF_LINE}"

    ((FILE_SYSTEM_NUM++))
done


# Form 7: Infinite Loop
echo
echo "Press Ctrl+C to stop."
while [ true ]
do
    echo "Hello"
    sleep 1
done

# TODO
# * None
