# Description: curl - transfer a URL

### Notes
* None

### Common Examples
``` 
curl --verbose \
--http1.1 \
--header "Host: ptsv2.com" \
--header "Connection: close" \
--header "User-Agent: curl/7.35.0 Linux/3.13.0-43-generic" \
--header "Accept: text/html" \
http://ptsv2.com/
```

### Examples With Details
#### Simple Examples
```
# Get the version of curl and all the libraries that it uses
curl --version

# Use -v switch for verbose output. Same as --verbose.
curl -v https://www.google.com

# Get index.html using http1.1 protocol
curl -v --http1.1 https://www.google.com

# Download a Single File
curl https://www.google.com

# Save the cURL Output to a file
# - USe -o (lowercase o) option to save the result in the filename provided on the command line.
# - USe -O (uppercase O) to take the filename from the URL and save it.
# - The curl with -o option will display the progress meter for the download.
# - When curl has to write the data to the terminal, it disables the Progress Meter,
curl -o output_mygettext.html http://www.gnu.org/software/gettext/manual/gettext.html
curl -O http://www.gnu.org/software/gettext/manual/gettext.html

# Fetch Multiple Files at a time
curl -O URL1 -O URL2
```

#### Create an Multiline HTTP Request Message
* Use the switch --verbose to display HTTP Request message and HTTP Response message. Same as -v option.
* Use the switch --http1.1 to explicitly use HTTP version 1.1.
* Use the switch --header multiple times to define multiple HTTP Headers.  Same as -H option.
```
curl --verbose \
--http1.1 \
--header "Host: ptsv2.com" \
--header "Connection: close" \
--header "User-Agent: curl/7.35.0 Linux/3.13.0-43-generic" \
--header "Accept: text/html" \
http://ptsv2.com/
```

#### Follow HTTP Location Headers with -L option
```
curl http://www.google.com

<TITLE>302 Moved</TITLE>
<H 1>302 Moved</H 1>
The document has moved
<A HREF="http://www.google.co.in/">here</A>

# Use following to automatically follow location
curl -L http://www.google.com
```

#### Continue/Resume a Previous Download
* Usie curl -C option, to continue a download which was stopped.
``` 
curl -O http://www.gnu.org/software/gettext/manual/gettext.html

# Use Ctrl+C to to stop the download


# Continue the download
curl -C - -O http://www.gnu.org/software/gettext/manual/gettext.html
```

#### Limit the Rate of Data Transfer
* The below command will limit the data transfer to 1000 Bytes/second. The curl may use higher transfer rate for short 
  span of time. But on an average, it will come around to 1000B/second.
``` 
curl --limit-rate 1000B -O http://www.gnu.org/software/gettext/manual/gettext.html
```

#### Download a file only if it is modified before/after the given time
``` 
curl -z 21-Dec-11 http://www.example.com/yy.html
```

#### Pass HTTP Authentication in cURL
``` 
curl -u username:password URL
```

### Cool Tricks
* Find the public IP of a machine using `curl http://icanhazip.com`.

### TODO
* https://www.thegeekstuff.com/2012/04/curl-examples/
