# Description: Simple gawk Examples

### Print Totol Number of Line
- This will print the total number of lines in the file 'filename' to the screen. 

```
awk 'END {print NR}' filename
```

### Print the 10th Line
- This will print the 10th input line to the screen.

```bash
awk 'NR == 10 {print}' filename
```

### Print the First Field
- This print only the first field ($1) of every line found in the file 'filename'.

```bash
awk '{print $1}' filename
```

### [TODO] Print the Last Field of the File 
- This prints the last field of the last input line to the screen.

```bash
awk '{field=$NR} END {print field}' filename
```

### Print Lines With Four or More Fields
- This prints all input lines ($0) from the file 'filename' that have more than 4 fields (NF>4).

```bash
awk 'NF > 4 {print $0}' filename
```

### Print Selected Fields in Custom Order
- This print the values of the first ($1), fourth ($4), and third ($3) fields of every line in that order from the file 
  'filename'. Each line is separated by the output field separator (OFS) which is one space by default.
  
```bash
awk '{print $1, $4, $3}' filename
```

### Find the Number of Occurrences of a Pattern in The First Field
- This searches for fields that start (^) with Line-4 (~/Line-4/) in the first field ($1). 
- For every match, it increments linesdata by one (++linesdata). 
- After the entire filename has been read, the program prints to the screen the number of lines that met the criteria 
  along with a little sentence quoting the name of the input file ($FILENAME).

```bash
awk 'BEGIN {linesdata=0} $1 ~/^Line-4/ {++linesdata} END {print linesdata \
" Lines start with MDATA in the first field from " $FILENAME}' filename
```

### Find a Number in the First Field
- If the value in the first field in filename is equal to 4, then the entire line ($0) will be printed to the screen.

```bash
awk '($1 == 4) {print $0}' filename
```

### Find the Largest Number in First Field
- This will find the largest value in the first field in the entire file. 
- After finishing reading the file, it will print the maximum time found in the first field followed by the entire line 
  from which the value came from.

```bash
awk '($1 > timemax) {timemax = $1; maxinput = $0} \
END {print timemax, maxinput}' filename
```

### Translate a File Field
- This will translate a file with MDATA value into a file with numeric value only and separated by tabs (OFS="\t")

```bash
awk 'while ($1~/MDATA/) {print $2,$3} BEGIN {OFS="\t"}' inputfile
```

### Print a Field Based on a Condition on a Different Field
- This will print the fourth field if the first field begins(^) with either “owe” or (|) “debt.”

```bash
awk '($1~/^(owe|debt)/) {print $4}' inputfile
```

### Sum a Field Value Based on a Condition on a Different Field
- This will do the same as the previous command except it will also sum the fourth field (sum=sum + $4) and print the 
  total at the end of the list.
  
```bash
awk 'BEGIN {sum=0} \
($1~/^(owe|debt)/) {sum=sum + $4; print $4} \
END {print "Your total debt is", sum}' inputfile
```

### Complex Regular Expression Pattern
- This will filter lines that contain (begins (^) and ends with ($)) capital “R” followed by either a 0 or 1 then 
  followed by a number 0 through 9. Then, these lines will be counted (++n adds 1 to n) and printed with the number 
  order that they occurred (e.g., if there are five lines that match the expression, they will be printed in order and 
  labeled 1 2 3 4 5 respectively).
```bash
awk 'BEGIN {n=0; OFS="\t"} \
($0~/^R[01][0-9]$/) {++n; print n, $0}' inputfile
```

### Redirect to Other Files 
- All output from these commands will go to the screen, but one can use UNIX redirection commands to "pipe" the output 
  into another command or > "redirect" the output to a file or even >> "append" the output to the and of a pre-existing 
  file.

### Formatted Printout
- Awk is also very useful when you need to put information in a different format for a script. Just include the 
  formatting awk statement in your script. 


