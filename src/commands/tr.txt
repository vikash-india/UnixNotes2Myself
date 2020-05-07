# Description: tr - translate or delete characters

# Notes
# None

# Common Examples
tr a-z A-Z

# Examples with details

echo "perfios" | tr "[:lower:]" "[:upper:]"	   #converts lower case to upper case
PERFIOS


echo "perfios" | tr "[a-z]" "[A-Z]"		   #converts lower case to upper case		
PERFIOS


echo "PERFIOS" | tr "[:upper:]" "[:lower:]"	   #converts upper case to lower case
perfios


echo "PERFIOS" | tr "[A-Z]" "[a-z]"                #converts upper case to lower case
perfios


echo "unix" | tr -c "u" "a"			   #replace non-matching characters. 
uaaa


tr -cd "[:print:]" < filename			   #delete non-printable characters 


echo "linux    server" | tr -s " "                 #squeezing characters 
linux server


echo "linuxserver" | tr -d "linux"                 #delete characters 
server

# Cool Tricks
# None


