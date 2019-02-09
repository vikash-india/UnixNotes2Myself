# Description: For Loop in Bash Script

# Note
# 1. The general syntax is
#    for VARIABLE_NAME in ITEM_1 ITEM_2 ITEM_3
#    do
#       echo ${VARIABLE_NAME}
#    done

# Form 1: Iterating Over a List
for x in one two three
do
    echo ${x}
done

# Form 2: Iterating Over a Variable
my_list="one two three"
for x in ${my_list}
do
    echo ${x}
done

# Form 3: Iterating Over a Command Output
my_list=$(ls *.sh)
for x in ${my_list}
do
    echo ${x}
done

# TODO
# * None
