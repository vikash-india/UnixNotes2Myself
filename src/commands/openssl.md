# Description: openssl - OpenSSL Command Line Tool

### Notes
* None

### Common Examples
```
openssl -h
openssl s_client -connect google.com:443 < /dev/null
openssl s_client -connect google.com:443 < /dev/null | openssl x509 -in /dev/stdin -text -noout
```

### Examples with Details
#### SSL Functions
* Secure Client Using s_client

```
# Show a domain's SSL Certificate Details
# - Use s_client to run in client mode
# - Use -connect to connect to a server
# - Specify domain name along with its SSL port 443
# - Redirect /dev/null to get a clean terminal output
openssl s_client -connect google.com:443 < /dev/null

# Show all intermediate certificates too using the option -showcerts
openssl s_client -showcerts -connect www.google.com:443 < /dev/null     

# Connect using TLSv1.2 only using the option -tls1_2
openssl s_client -connect -tls1_2 qualys.com:443 < /dev/null 	       
```

* Certificate Operations Using x509

```
# Decode the .crt certificate file
# - Use x509 option to specify the certificate standard
# - Use -in /dev/stdin option to read the content from standard input
# - Use -text option to to display readable text content
# - Use -noout to avoid spitting out PEM formatted certificate details
openssl x509 -in www.google.com.crt -noout text  

# Get the certificate and pipe it to decode the certificate
openssl s_client -connect google.com:443 < /dev/null 2>/dev/null | openssl x509  -in /dev/stdin -noout -text

# Check start date and end date of a certificate
openssl s_client -connect google.com:443 < /dev/null 2>/dev/null | openssl x509  -in /dev/stdin -noout -dates

# Check expirty of a certificate
openssl s_client -connect google.com:443 < /dev/null 2>/dev/null | openssl x509  -in /dev/stdin -noout -enddate

# Convert PEM encoded certificate to DER encoded certificate
openssl x509 -in ServerCertificate.cer -outform der -out ServerCertificate.der

# Convert DER encoded certificate to PEM encoded certificate
openssl x509 -in ServerCertificate.der -inform der -outform pem -out ServerCertificate.pem
```

* Generate Keys using genrsa/rsa

```
# Generate 4096 bit RSA private key
openssl genrsa -out mysite.key 4096

# Display the private key components
openssl rsa -noout -text -check -in mysite.key

# Extract the public key
openssl rsa -in mysite.key -pubout > mysite.key.pub
  
# Display the public key components
openssl rsa -in mysite.key.pub -pubin -text -noout   
```

* Generate CSR or Self-signed Certificates Using req

```
# Generate a new CSR that should be sent to CA for signing
openssl req -new -key mysite.key -out mysite.csr 

# Create self-signed certificates
openssl req -x509 -newkey rsa:4096 -keyout mysite.key -out mysite.crt -days 365 
```

* Secure Server Using s_server

```
# Start an SSL server on port 4443
# - Private key and a certificate is required to run an SSL server
# - Terminal will keep showing you how to connect to the server
# - This can help simulate SSL server on a local machine for testing
openssl s_server -cert mycert.crt -key mysite.key -www -accept 4443
```

* List SSL Ciphers Using ciphers

```
# Display all ciphers information
openssl ciphers -v

# Display information about a particular cipher
openssl ciphers -v 'DHE-RSA-AES256-SHA'
```

* View CRL Information Using crl

```
# Get the CRL URL from any SSL certificate and get its Certificate Revocation List
curl -s http://pki.google.com/GIAG2.crl  | openssl crl -inform DER -text -noout -in /dev/stdin
```

* Miscellaneous 

```
# All md5sums should be the same if they belong to the same website
openssl x509 -noout -modulus mysite.crt | openssl sha256  
openssl req -noout -modulus mysite.csr | openssl sha256   
openssl rsa -noout -modulus mysite.key | openssl sha256   
```

#### Generic Encryption Decryption Functions

* Sign and Verify Signature Using dgst

```
# Sign a File
# - Sign the input message file input_message.tar.gz.
# - Use the private key file privkey.pem for signing.
# - Output the signature as input_message.tar.gz.sig.
openssl dgst -sha256 -sign privkey.pem -out input_message.tar.gz.sig input_message.tar.gz        

# Verify the Signature
# - Use the public key for verification
# - Use the -signature option to verify the signature of the signature file.
openssl dgst -sha256 -verify pubkey.pem -signature input_message.tar.gz.sig input_message.tar.gz 
```

* Encryption and Decryption Using enc

```
# Encrypt a plain text file
openssl enc -aes-256-cbc -salt -in file.txt -out file.txt.enc [-k PASS]   

# Decrypt an encrypted file
openssl enc -aes-256-cbc -d -in file.txt.enc -out file.txt [-k PASS]      
```

* Encoding and Decoding Using base64

```
# Base64 Encoding
openssl base64 -in file.txt -out file.txt.base64

# Decode Base64 encoded data
openssl base64 -d -in file.txt.base64 -out file.txt                       
```

* Elliptical Curve Cryptography Using ecparam

```
# List all ECC curves
openssl ecparam -list_curves                                           

#create key for curve secp256k1
openssl ecparam -name secp256k1 -genkey -noout -out secp256k1-key.pem
```

* Generate Shadow Style Passwords Using passwd

```
# Create Shadow-style Password
# - The output of the below command can be pasted in system files
openssl passwd -1 -salt alphanumeric MyPassword   
```

* Generate Random Data Using rand

```
# Create 64 bytes random data
openssl rand -out random-data.bin 64              

# Get 64 random bytes from urandom and base64 encode
head -c 64 /dev/urandom | openssl enc -base64
```

### Cool Tricks
* None

### TODO
* None
