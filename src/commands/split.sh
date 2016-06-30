# Description: split - split a file into pieces

# Common Examples
split file_name 

# Options
   -l, --lines=NUMBER
              put NUMBER lines per output file

   -b, --bytes=SIZE
              put SIZE bytes per output file





# Examples with details
split file_name                         # copies contents of file to another file
split -l value file_name                # splits the file into different files each file having value lines
split -b value file_name		# splits the file into different files each file of size value bytes

