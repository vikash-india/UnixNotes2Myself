#Description: sed - Stream EDitor. It is a powerful tool used for modifying text coming from stdin or files.

#Notes
#1.SED can be used in many different ways, such as:
#	- Text substitution,
#	- Selective printing of text files,
#	- In-a-place editing of text files,
#	- Non-interactive editing of text files, and many more.
#2.The basic usage of sed command is :
#			sed [options] commands [file-to-edit]
#3.sed outputs to stdout by default. Can be redirected to save in a file.
#4.When sed encounters no addresses, it performs its operations on every line in the file.
#Addresses are either particular locations in a file or a range where a particular editing command should be applied.
#Workflow
#	Read: SED reads a line from the input stream (file, pipe, or stdin) and stores it in its internal buffer called pattern buffer.

#	Execute: All SED commands are applied sequentially on the pattern buffer. 
#			 By default, SED commands are applied on all lines (globally) unless line addressing is specified.

#	Display: Send the (modified) contents to the output stream(stdout or a file).
			 After sending the data, the pattern buffer will be empty.

#Examples with details
sed -e '1d' -e '2d' -e '5d' books.txt 					#delete lines 1,2 $ 5 from file books.txt

echo -e "1d\n2d\n5d" > commands.txt						#adding sed commands to a text file,to perform above action.
sed -f commands.txt books.txt

sed 's/search_pattern/replacement_string'				#here "s" specifies substitution operation.
sed 's/search_pattern/replacement_string/n'				#replace the nth occurence of a pattern in a line.
sed 's/search_pattern/replacement_string/g'				#global replacement,i.e,replace all occurences.
sed -n '/regexp/p'										#print only the lines that match a regular expression.
sed -n '/regexp/!d'										#delete the lines that do not match a regular expression


#Cool Tricks
#None

#ToDO
#None

