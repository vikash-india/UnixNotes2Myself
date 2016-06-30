#COMMAND - "free"


#Description
       free - Display amount of free and used memory in the system

#SYNOPSIS
       free [options]

#OPTIONS
       -b, --bytes
              Display the amount of memory in bytes.

       -k, --kilo
              Display the amount of memory in kilobytes.  This is the default.

       -m, --mega
              Display the amount of memory in megabytes.

       -g, --giga
              Display the amount of memory in gigabytes.

       --tera Display the amount of memory in terabytes.


#Examples 

	free -m    # displays the amount of memory free and used in system in megabytes

	free 	   # displays the amount of memory free and used in system in kilobytes 
