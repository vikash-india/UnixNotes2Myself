# Description: The gawk Cheat Sheet

### The Basics
```
Command                     Description
------------------------------------------------------------------------------------------------------------------------
awk ‘commands’ file(s)      Invoke the awk commands (commands) on one or more file (file(s)).
awk -f script.awk file(s)   Multiple awk commands from the file script.awk can be executed against the input file(s).
#                           Comment statements in an awk script.
$0                          Denotes an entire line in a field.
$1 $2 $3 ...                Denotes the first, second, third, etc fields respectively in a file.
NF                          Awk automatically counts the fields for each input line and sets the variable NF to it.
length(field)               Counts the number of characters in a word or field. Eg, length($5), length($0) etc.
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
do statement while (expression)                         Execute statement; if expression is true, repeat.
for (expression1; expression2; expression3) statement   Equivalent to expression1; while (expression2) {statement; 
                                                        expression3}.
for (variable in array) statement                       Execute statement with variable set to each subscript in array 
                                                        in turn.
break                                                   Immediately leave innermost enclosing while, for, or do.
continue                                                Start next iteration of innermost enclosing while, for, or do.
next                                                    Start next iteration of main input loop.
exit                                                    Exit.
exit expression                                         Go immediately to the END action; if within the END action, exit 
                                                        program entirely.
```

### Regular Expressions - Metacharacters
```
Metacharacters  Description
------------------------------------------------------------------------------------------------------------------------
\                   Used in an escape sequence to match a special symbol. Eg. \t matches a tab & \* matches * literally.
^                   Matches the beginning of a string.
$                   Matches the end of a string.
.                   Matches any single character.
[ABDU]              Matches either character A, B, D, or U. It can also include ranges like [a-e-B-R].
A|B                 Matches A or B.
DF                  Matches D immediately followed by an F.
R*                  Matches zero or more Rs.
R+                  Matches one or more Rs.
R?                  Matches a null string or R.
NR==10, NR==25      Matches all lines from the 10th read to the 25th read.
```

### Regular Expressions - Escape Sequences
```
Escape Sequences    Description
------------------------------------------------------------------------------------------------------------------------
\b                  Backspace.
\f                  Form feed.
\n                  Newline (line feed).
\r                  Carriage return.
\t                  Tab.
\ddd                Octal value ddd, where ddd is 1 to 3 digits between 0 and 7.
\c                  Any other character literally (e.g., \\ for backslash, \” for “, \* for *, and so on).
```

### Operators
```
Operators   Description
------------------------------------------------------------------------------------------------------------------------
<                   Less than.
<=                  Less than or equal to.
==                  Equal to.
!=                  Not equal to.
>=                  Greater than or equal to.
>                   Greater than.
~                   Matched by (used when comparing strings).
!~                  Not matched by (used when comparing strings).
```

### Built-In Variables
```
Variables           Default     Description    
------------------------------------------------------------------------------------------------------------------------
FS                  one space   Controls the input field separator.
OFS                 one space   Output field separator.
RS                  \n          Controls the input record separator.
ORS                 \n          Output record separator.
NF                  –           Number of fields in current record.
NR                  –           Number of records read so far.
FNR                 –           Record number in current file.
FILENAME            –           Name of current input file.
SUBSEP              \034        Subscript separator. 
RSTART              –           Start of string matched by match function.
RLENGTH             –           Length of string matched by match function.
ARGC                –           Number of command line arguments. 
ARGV                –           Array of command line arguments.
ARGIND              –           Index to ARGV to retrieve the current file name.
OFMT                %.6g        Output format for numbers.
ENVIRON             –           Array containing all environment variables and values. e.g. ENVIRON["PATH"].
IGNORECASE          0           When set to 1, it is case insensitive for string and reg-ex comparison.
ERRNO               –           Contains error message of an I/O operation. e.g. while using getline function.
```

### Built-In String Functions
```
Function                Description
------------------------------------------------------------------------------------------------------------------------
r                       Represents a regular expression.
s and t                 Represent string expressions.
n and p                 Integers.

gsub(r,s)               Substitute s for r globally in $0; return number of substitutions made.
gsub(r,s,t)             Substitute s for r globally in string t; return number of substitutions made.
index(s,t)              Return first position of string t in s, or 0 if t is not present.
length(s)               Return number of characters in s.
match(s,r)              Test whether s contains a substring matched by r; return index or 0; sets RSTART and RLENGTH.
split(s,a)              Split s into array a on FS; return number of fields.
split(s,a,fs)           Split s into array a on field separator fs; return number of fields.
sprintf(fmt,expr-list)  Return expr-list formatted according to format string fmt.
sub(r,s)                Substitute s for the leftmost longest substring of $0 matched by r; return # of subs made.
sub(r,s,t)              Substitute s for the leftmost longest substring of t matched by r; return # of subs made.
substr(s,p)             Return suffix of s starting at position p.
substr(s,p,n)           Return substring of s of length n starting at position p.
```

### Expression Operators
```
Operation               Operators               Example         Meaning of Example
------------------------------------------------------------------------------------------------------------------------
assignment              = += -= *= /= %= ^=     x = x * 2       x = x * 2.
conditional             ?:                      x?y:z           If x is true, then y; else z.
logical OR              ||                      x || y          1 if x or y is true; 0 otherwise.
logical AND             &&                      x && y          1 if x and y are true; 0 otherwise.
array membership        in                      i in a          1 if a[i] exists; 0 otherwise.
matching                ~ !~                    $1 ~ /x/        1 if the first field contains an x; 0 otherwise.
relational              < <= > >= == !=         x == y          1 of x equals y; 0 otherwise.
concatenation                                   “a” “bc”        “abc”; there is no explicit concatenation operator.
add, subtract           + -                     x + y           Sum of x and y.
multiply, divide, mod   * / %                   x % y           Remainder of x is divided by y (fraction).
unary plus and minus    + -                     -x              Negative x.
logical NOT             !                       !$1             1 if $1 is zero or null; 0 otherwise.
exponentiation          ^                       x ^ y           xy.
increment, decrement    ++ --                   ++x, x++        Add 1 to x.
field                   $                       $i + 1          Value of the ith field, plus 1.
grouping                ()                      ($i)++          Add 1 to the value of the ith field.
```

### Output Statements
```
Command                                                     Description
------------------------------------------------------------------------------------------------------------------------
print                                                       Print $0 to the screen.
print expression, expression, ...                           Print expression’s, separated by OFS, terminated by ORS.
print expression, expression, ... > filename                Print to filename rather than just to the screen.
print expression, expression, ... >> filename               Append to the end of filename rather than to the screen.
print expression, expression, ... | command                 Print to standard input of command.
printf(format, expression, expression, ...)                 Printf statements are just line print statements except the 
                                                            first argument specifies output format.
printf(format, expression, expression, ...) > filename
printf(format, expression, expression, ...) >> filename          
printf(format, expression, expression, ...) | command
close(filename), close(command)                             Break connection between print and filename or command.
system(command)                                             Execute command, value is status return of command. 
```

### Printf Format Control Characters
```
Character   Print Expression as...
------------------------------------------------------------------------------------------------------------------------
c           ASCII character
d           Decimal integer
e           [-]d.ddddddE[+-]dd
f           [-]ddd.dddddd
g           e or f conversion; whichever is shorter, with nonsignificant zeroes suppressed
o           Unsigned octal number
s           String
x           Unsigned hexadecimal number
%           Print a %; no argument is consumed 
```

### Additional Awk Commands
```
Command             Description
------------------------------------------------------------------------------------------------------------------------
&                   Two way communication between awk command and external process.
systime()           Current time in epoch time. Combine with strftime. Eg. print strftime("%c",systime()).
getline             Read the next line from the input-file. Sets $0, NF, NR, FNR.
getline var         Read next line from the input-file and store it in variable (var). Sets NR, FNR.
getline < file      Read next line from another input-file. Sets $0, NF.
getline var < file  Read next line from another input-file and store it in variable (var).
cmd | getline       Execute Unix OS command (cmd) and store output in $0.
```

### WriteHere
```
Commands    Description
------------------------------------------------------------------------------------------------------------------------
```
