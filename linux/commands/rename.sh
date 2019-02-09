# Description: rename - renames multiple files

# Notes
# 1. The syntax is rename [ -v ] [ -n ] [ -f ] perlexpr [ files ]
# 2. This command renames the filenames supplied according to the rule specified as the first argument 'perlexpr'.
# 3. The perlexpr argument is a Perl expression which is expected to modify the $_ string in Perl for at least some of
#    the filenames specified.  If a given filename is not modified by the expression, it will not be renamed.  If no
#    filenames are given on the command line, filenames will be read via standard input.

# Common Examples
rename -vn 's/(DSC_....)(.*)(\.jpg)$/$1$3/' *.jpg
rename -vn 's/(<|>|:|"|\\|\||\*|\?)/ /g' *

# Examples with details
rename 's/\.bak$//' *.bak       # Rename all files matching "*.bak" to strip the extension.
rename 'y/A-Z/a-z/' *           # Translate uppercase names to lower.

rename -v 's/\.bak$//' *.bak    # Use -v or --verbose to print names of files successfully renamed.
rename -vn 's/\.bak$//' *.bak   # Use -n or --no-act for no action. Just show what files would have been renamed.
rename -f 's/\.bak$//' *.bak    # Use -f or --force flag to force ie overwrite existing files.

# Cool Tricks
# 1. Rename files like DSC_8790_14609827968_o.jpg to DSC_8790.jpg
#    Note: Remove the -n or --no-act switch to rename instead of just showing the changes.
rename -vn 's/(DSC_....)(.*)(\.jpg)$/$1$3/' *.jpg

# 2. Remove NTFS Invalid characters ie < or > or : or \" or \ or | or * or ? with SPACE.
#    Note: Remove the -n or --no-act switch to rename instead of just showing the changes.
rename -vn 's/(<|>|:|"|\\|\||\*|\?)/ /g' *

# TODO
# None
