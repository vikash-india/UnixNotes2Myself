# Description: The locate Command

### Notes
* The locate command is used to find files by name.
* The locate utility works better and faster than it's find counterpart because instead of searching the file system 
  when a file search is initiated - something find does - locate would look through a database called mlocate. This 
  database contains bits and parts of files and their corresponding paths on your system.

### Common Examples
```shell
locate -i filename.txt
locate -ie filename.txt
locate -c "*.html"
```

### Examples With Details
```shell
locate filename.txt                 # Search for filename.txt.
locate "*.html" -n 20               # Use -n flag to limit search queries to a specific number.
locate -i filename.txt              # Use -i flag to ignore case sensitivity and search for both uppercase & lowercase.
locate -c "*.html"                  # Use -c flag to display the count of all matching entries of file "html".

locate -i -0 *text.txt*             # Locate command's default separator is the newline (\\n) character. Use -0 flag to
                                    # use a different separator like the ASCII NUL.
locate -q filename.txt              # Use -q to suppress error messages in locate. Constantly trying to access your 
                                    # locate database sometimes yield unnecessary error messages stating that you do not 
                                    # have the required privileges to have root access to the mlocate.db.
locate -e filename.txt              # Display only files present in your system. After updating the mlocate database, 
                                    # the locate command still produces results of files whose physical copies are 
                                    # deleted from the system. The -e flag forces the locate to check for the existence 
                                    # of the file.

# Commands Related to mlocate Database
sudo updatedb                       # To update the mocate database, use the utility called updatedb.
locate -S                           # Use -s flag to view the locate database statistics.
locate -d /path/to/new/db filename  # Use -d flag to choose a different mlocate location.
```

### Cool Tricks
* None

### TODO
* None
