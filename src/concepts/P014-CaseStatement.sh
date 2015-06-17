# Description: Case Statement in Unix Shell Script

# Note
# 1.  The command ;; is similar to break statement in C programming language.

# weekday="Monday"
weekday=`date '+%A'`

case "$weekday" in
    "Monday")
    # One or more statements can come here
    echo "Today is Monday."
    ;;  # Similar to break statement

    "Tuesday")
    # One or more statements can come here
    echo "Today is Tuesday."
    ;;  # Similar to break statement

    "Wednesday")
    # One or more statements can come here
    echo "Today is Wednesday."
    ;;  # Similar to break statement

    "Thursday")
    # One or more statements can come here
    echo "Today is Thursday."
    ;;  # Similar to break statement

    "Friday")
    # One or more statements can come here
    echo "Today is Friday."
    ;;  # Similar to break statement

    "Saturday")
    # One or more statements can come here
    echo "Today is Saturday."
    ;;  # Similar to break statement

    "Sunday")
    # One or more statements can come here
    echo "Today is Sunday."
    ;;  # Similar to break statement
esac

exit 0

# TODO
# * None
