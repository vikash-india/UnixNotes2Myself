# Description: Case Statement in Bash Script

# Note
# 1. Case statement is an alternative to if-elif-else with multiple elif block.
# 2. The syntax is
#    case "$VAR" in
#       pattern_1)
#           # Commands goes here.
#           ;;
#       pattern_2)
#           # Commands goes here.
#           ;;
#    esac
# 3. The command ;; is similar to break statement in C programming language.
# 4. Patterns can include wildcards.
# 5. Multiple patterns can be matched using a pipe.


# Form 1: A Simple Case Statement
weekday=`date '+%A'`
# weekday="Monday"

case "$weekday" in
    "Monday")
        echo "Today is Monday."
        ;;

    "Tuesday")
        echo "Today is Tuesday."
        ;;

    "Wednesday")
        echo "Today is Wednesday."
        ;;

    "Thursday")
        echo "Today is Thursday."
        ;;

    "Friday")
        echo "Today is Friday."
        ;;

    "Saturday")
        echo "Today is Saturday."
        ;;

    "Sunday")
        echo "Today is Sunday."
        ;;
esac

# Form 2: Handling Multiple Cases
case "$1" in
    start|START)
        echo "Starting server."
        ;;
    stop|STOP)
        echo "Stopping server."
        ;;
    *)
        echo "Usage: $0 start|stop"
        exit 1
        ;;
esac

# Form 3: Handling Case Sensitive User Input
read -p "Do you want to continue? (y|yes or n|no): " ANSWER
case "$ANSWER" in
    [yY]|[yY][eE][sS])
        echo "Starting server."
        ;;
    [nN]|[nN][oO])
        echo "Stopping server."
        ;;
    *)
        echo "Usage: $0 y|n"
        exit 1
        ;;
esac

# TODO
# * None
