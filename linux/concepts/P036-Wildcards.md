# Description: Bash Wildcards

### Introduction
* Wildcards are is a character or a string used for pattern matching.
* Globbing expands the wildcards pattern into a list of files and/or directories.
* Wildcards can be used with most of the commands.

### Character Classes
* \*			- Matches 0 or more characters. Eg. *.txt, a*.txt, a* etc.
* ? 			- Matches exactly one single character. Eg. ?.txt, a?.txt, a? etc. 
* [...]			- Character Classes: Matches any ONE of the enclosed characters. Eg. [aeiou], ca[nt]* etc.
* [!...]/[^..]  - Negated Character Classes: Matches any ONE character NOT included in braces. Eg. [!aeiou]* etc.
* [...-...]		- Range Character Classes. A pair of characters separated by a minus sign. Eg. [a-g]*, [3-6]* etc.

### Named Character Classes
* [[:alpha:]]   - Matches alphabetic characters.
* [[:alnum:]]   - Matches alphanumeric characters (alpha+digits ie any uppercase/lowercase/decimal digits).
* [[:digit:]]   - Matches decimal digits 0 to 9.
* [[:lower:]]   - Matches lowercase letters.
* [[:upper:]]   - Matches uppercase letters.
* [[:space:]]   - Matches whitespace (spaces, tabs, newlines and similar).

### Matching Wildcards
* \             - Escape character. Use this to match a wildcard. Eg. \?, \*, *\? etc.

### Uses of Wildcards
* Wildcards are used to work on a group of files or directories. Eg. cp *.txt /tmp

### TODO
* Search for Bash Wildcards, test and update this note.
