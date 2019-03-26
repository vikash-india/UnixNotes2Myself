# Description: Arrays in Bash Script

# Note
# 1. None

################################################################################# Indexed Arrays
# Declare or initialise an indexed array
declare -a array_1                          # Use -a option with declare to explicitly create an array.
array_2=(foo bar)                           # Alternatively, create indexed arrays by simply assign them some values.
array_3[0]=foo                              # Alternatively, create indexed arrays by assigning one value at a time.

# Access an indexed array
echo "${array_2[@]}"                        # Display all the values of an array
echo ${array_2[*]}                          # Alternate way to display all values. Should be unquoted.
echo "${array_2[*]}"                        # If quoted, a single result will contain all the elements of the array.

echo ${array_2[0]}                          # Access a single element

echo ${array_2[*]}                          # All of the items in the array
echo ${!array_2[*]}                         # All of the indexes in the array
echo ${#array_2[*]}                         # Number of items in the array
echo ${#array_2[0]}                         # Length of item zero

# Add values to an indexed array
array_3+=(baz)                              # Add single elements.
array_3+=(baz foobar)                       # Add multiple elements.

# Deleting from an indexed array
unset array_3[1]                            # Delete an element at second index.
unset array_3                               # Delete entire array.

# Print keys of an arrays or associative arrays
indexed_array=(foo bar baz)                 # Will print 0, 1, 2 on different lines.
for index in "${!indexed_array[@]}"
do
    echo "$index"
done

# Get the size of an array
echo "The array size: ${#indexed_array[@]}"

# ################################################################################# Associative Arrays
# Declare or initialise an associative array
declare -A associative_array_1              # Use -A instead of -a to declare associative array.
associative_array_2=([A]=AAA [B]=BBB)

# Access an associative array
echo ${associative_array_3[@]}              # Will display all elements of the array but not keys.
echo ${associative_array_3[*]}              # Without quote, will display element by element.
echo "${associative_array_3[*]}"            # With quote, will display all elements as single string.

echo ${associative_array_2[A]}              # Access a single element

echo ${associative_array_2[*]}              # All of the items in the array
echo ${!associative_array_2[*]}             # All of the indexes in the array
echo ${#associative_array_2[*]}             # Number of items in the array
echo ${#associative_array_2[0]}             # Length of item zero

# Add values to an associative array
associative_array_3[A]="AA"                 # Add single element
associative_array_3+=([B]=BB [C]=CC)        # Add multiple elements at a time

# Deleting from an associative array
unset associative_array_3[B]                # Delete element at second index. TODO: ERROR
unset associative_array_3                   # Delete entire array.

# Print keys of an arrays or associative arrays. TODO: ERROR
declare -A associative_array
associative_array=([A]=AAA [B]=BBB)         # Will print A, B on different lines.
for index in "${!associative_array[@]}"
do
    echo "$index"
done

# TODO
# * None
