# Description: awk - AWK is an interpreted programming language. It is very powerful and specially designed for text processing.

# Notes

# 1. Generally, AWK is available by default on most GNU/Linux distributions.In case you don’t have AWK,do sudo apt-get install gawk.
# 2. An AWK program is a sequence of pattern {action} pairs and function definitions.  Short programs are entered on the command line usually 
#    enclosed in ' ' to avoid shell interpretation.  Longer programs can be read in from a file.
# 3. AWK follows a simple workflow − Read, Execute, and Repeat.
#	- Read - AWK reads a line from the input stream (file, pipe, or stdin) and stores it in memory.
#	- Execute - All AWK commands are applied sequentially on the input. By default AWK execute commands on every line. We can restrict #		    by providing patterns.
#	- Repeat - This process repeats until the file reaches its end.

# Common Examples

awk [options] file.txt					# Options include pattern and action that will be applied to the file.(command line)
awk -f file1.awk file2.txt				# Provide AWK commands in a file that will be applied to the target file.(file)
awk -v name=Jerry 'BEGIN{printf "Name = %s\n", name}'	# Assigns a value to a variable.

# Examples with details
awk '{print $3 "\t" $4}' file.txt			# Prints column 3rd and 4th of the file.
awk '/a/ {print}' file.txt				# Prints those records which matches with a.
awk '/a/{++cnt} END {print "Count = ", cnt}' file.txt	# Count and print the number of lines for which a pattern match succeeded.
awk 'length($0) > 18' file.txt				# Print only those lines that contain more than 18 characters.
awk '{							# AWK has associative arrays.It creates array and access the elements using index.
   fruits["mango"] = "yellow";
   fruits["orange"] = "orange"
   print fruits["orange"] "\n" fruits["mango"]
}'
awk '{ for (i = 1; i <= 5; ++i) print i }'		# for loop where initialization is done,checks condition and prints.
awk '{ if (5>1) printf "5 is greater" }'		# if condition is checked and prints.
awk '{ print "Hello" > "/tmp/message.txt" }'		# redirects the output to the mentioned directory.

# Cool Tricks
#None

# TODO
# None
