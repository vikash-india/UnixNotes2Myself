# Description: The gawk Cheat Sheet

### The Basics
```
Command                     Description
------------------------------------------------------------------------------------------------------------------------
awk ‘cmds’ file(s)          Invoke the awk commands (cmds) on the file or files (file(s)).
awk -f script.awk file(s)   Multiple awk commands from script.awk can be executed against the input file(s).
#                           Used to comment out statements in an awk program file.
$0                          Denotes an entire line in a field.
$1 $2 $3...                 Denotes the first, second, third, etc fields respectively in a file.
NF                          Awk automatically counts the fields for each input line and sets the variable NF to that
                            value.
length(field)               Counts the number of characters in a word or field (Eg, length($5), length($0) etc.).
{...}                       Anything inside the braces is treated as an executable step (ie print, n=5+$32, getline).
(...)                       Anything inside the braces is used to test for patterns (if--then...else, while, etc.).
{print...}                  Print the output to the console unless the output is redirected to a file.
{printf(...)}               Prints using a user-supplied format.
BEGIN{...}                  Executes whatever is inside the braces before reading the first input line.
END{...}                    Executes whatever is inside the braces after awk is finished reading the input file.
array[countr]               An array with the counting variable countr. Note this didn’t have to be predefined!
/string/                    Matches the current input line for string.
~/string/                   Matches current input line for string by itself or as a substring.
!~ /string/                 Matches current input line for anything not containing string
```

### Control Flow Statements
```
Command                     Description
------------------------------------------------------------------------------------------------------------------------
{statements}                                            Execute all the statements grouped in the brackets.
if (expression) statement                               If expression is true, execute statement.
if (expression) statement1 else statement2              If expression is true, execute statement1; otherwise, execute 
                                                        statement2.
while (expression) statement                            If expression is true, execute statement and repeat.
for (expression1; expression2; expression3) statement   Equivalent to expression1; while (expression2) {statement; 
                                                        expression3}.
for (variable in array) statement                       Execute statement with variable set to each subscript in array 
                                                        in turn.
do statement while (expression)                         Execute statement; if expression is true, repeat.
break                                                   Immediately leave innermost enclosing while, for, or do.
continue                                                Start next iteration of innermost enclosing while, for, or do.
next                                                    Start next iteration of main input loop.
exit                                                    Exit.
exit expression                                         Go immediately to the END action; if within the END action, exit 
                                                        program entirely.
```