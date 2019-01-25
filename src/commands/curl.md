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

### Cool Tricks
* Find the public IP of a machine using `curl http://icanhazip.com`.

### TODO
* None
