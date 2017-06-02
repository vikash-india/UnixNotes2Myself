# Description: curl : curl is a client to get documents/files from or send documents to server,using any of supported protocols(HTTP,HTTPS,FTP, etc) .The command is designed to work without user interaction or any kind of interactivity

# Notes
# curl offers a busload of useful tricks like proxy support, user authentication, 
#FTP upload, HTTP post, SSL connections, cookies, file transfer resume, Metalink, and more.

# Common Examples
 curl <website name>
 

# Examples with details
curl google.com 				#will fetch html code (html page) of the website
curl -T uploadfilename -u username:password ftp://sitename.com/myfile     #to upload a file to a remote directly using FTP
curl -o pages#1.html http://example.com/pages.php?pageNo=[1-12]           #to download pages with a variable GET parameter

# Cool Tricks
# 1. returns public ip of the system

 curl icanhazip.com

 
# TODO
# None