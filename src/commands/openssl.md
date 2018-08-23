# Description: openssl - OpenSSL Command Line Tool

### Notes
* None

### Common Examples
```
openssl -h
openssl version -a
```

### Examples with Details
```
# OpenSSL Help
openssl -h
man openssl

# OpenSSL Version
openssl version -a
```

#### SSL Functions

* Working with RSA Keys Using genrsa/rsa

```
# General Syntax where bits can be 2048, 4096, 8192 etc.
# openssl genrsa -out example.key [bits]

# Generate 4096 bit RSA private key
openssl genrsa -out example.key 4096

# Print the textual representation of the private key 
openssl rsa -noout  text -in example.key 
openssl rsa -noout -text -in example.key -check

# Print the modulus only from the private key
openssl rsa -in example.key -noout -modulus

# Print the public key from the private key
openssl rsa -in example.key -pubout
openssl rsa -in example.key -pubout > example.key.pub

# Print the textual representation of the public key 
openssl rsa -in example.key.pub -pubin -text -noout

# General syntax to generate new RSA key and encrypt with a pass phrase based on AES CBC 256 encryption
# openssl genrsa -aes256 -out example.key [bits]

# Generate new RSA key and encrypt with a pass phrase based on AES CBC 256 encryption
openssl genrsa -aes256 -out example.key 4096

# Check a private key. If the key has a pass phrase, a prompt will appear
openssl rsa -check -in example.key

# Remove passphrase from a key
openssl rsa -in example.key -out example.key

# Encrypt existing private key with a pass phrase
openssl rsa -des3 -in example.key -out example_with_pass.key
```

* Working with ECDSA Keys Using ecparam/ec/dhparam

```
# General syntax to generate ECDSA key. 
# Replace curve with prime256v1, secp384r1, secp521r1, or any other supported elliptic curve.
openssl ecparam -genkey -name [curve] | openssl ec -out example.ec.key

# Print ECDSA key textual representation:
openssl ec -in example.ec.key -text -noout

# List available EC curves, that OpenSSL library supports
openssl ecparam -list_curve

# Generate DH params with a given length
openssl dhparam -out dhparams.pem [bits]
```

* Generate CSR or Self-signed Certificates Using req

```
# General syntax to create a CSR from an existing private key.
# The [digest] can be any supported hash function: md5, sha1, sha224, sha256, sha384 or sha512, etc. 
# Use sha256 and above for [digest]
# openssl req -new -key example.key -out example.csr -[digest]

# Create a CSR from an existing private key and send it to CA for signing
openssl req -new -key example.key -out example.csr

# Create a private key without a pass phrase and a CSR in a single command
# General syntax: openssl req -nodes -newkey rsa:[bits] -keyout example.key -out example.csr
openssl req -nodes -newkey rsa:2048 -keyout example.key -out example.csr

# Provide CSR subject info on a command line, rather than through interactive prompt
openssl req -nodes -newkey rsa:2048 -keyout example.key -out example.csr -subj "/C=IN/ST=Karnataka/L=Bangalore/O=My Company Name/OU=Department Name/CN=example.com"

# Create a CSR from existing certificate and private key
openssl x509 -x509toreq -in cert.pem -out example.csr -signkey example.key

# Generate a CSR for multi-domain SAN certificate by supplying an openssl config file
openssl req -new -key example.key -out example.csr -config req.conf

# The content of req.conf
[req]
prompt=no
default_md = sha256
distinguished_name = dn
req_extensions = req_ext

[dn]
CN=example.com

[req_ext]
subjectAltName=@alt_names
[alt_names]
DNS.1=example.com
DNS.2=www.example.com
DNS.3=ftp.example.com
```

* Certificate Operations Using x509

```
# Create self-signed certificates and a new private key with 1 Year Validity
openssl req -x509 -newkey rsa:4096 -keyout example.key -out example.crt -days 365 

# Create a self signed certificate using existing CSR and private key
openssl x509 -req -in example.csr -signkey example.key -out example.crt -days 365

# Sign child certificate using your own CA certificate and its private key. 
# Note: If you were a CA company, this shows a very naive example of how new certificates can be issued.
openssl x509 -req -in child.csr -days 365 -CA ca.crt -CAkey ca.key -set_serial 01 -out child.crt

# Decode the .crt certificate file
# - Use x509 option to specify the certificate standard
# - Use -in /dev/stdin option to read the content from standard input
# - Use -text option to to display readable text content
# - Use -noout to avoid spitting out PEM formatted certificate details
openssl x509 -in example.crt -noout text  

# Print certificate’s fingerprint as md5, sha1, sha256 digest:
openssl x509 -in cert.pem -fingerprint -sha256 -noout

# Get the certificate and pipe it to decode the certificate
openssl s_client -connect google.com:443 < /dev/null 2>/dev/null | openssl x509  -in /dev/stdin -noout -text

# Check start date and end date of a certificate
openssl s_client -connect google.com:443 < /dev/null 2>/dev/null | openssl x509  -in /dev/stdin -noout -dates

# Check expirty of a certificate
openssl s_client -connect google.com:443 < /dev/null 2>/dev/null | openssl x509  -in /dev/stdin -noout -enddate
```

* Convert Between Encoding and Container Formats

```
# Convert PEM encoded certificate to DER encoded certificate
openssl x509 -in example.pem -outform der -out example.der

# Convert DER encoded certificate to PEM encoded certificate
openssl x509 -in example.der -inform der -out example.pem

# Combine several certificates in PKCS7 (P7B) file
openssl crl2pkcs7 -nocrl -certfile child.crt -certfile ca.crt -out example.p7b

# Convert from PKCS7 back to PEM. 
# Note: If PKCS7 file has multiple certificates, the PEM file will contain all of the items in it.
openssl pkcs7 -in example.p7b -print_certs -out example.crt

# Combine a PEM certificate file and a private key to PKCS#12 (.pfx .p12). 
# Also, a chain of certificates can be added to PKCS12 file.
openssl pkcs12 -export -out certificate.pfx -inkey privkey.pem -in certificate.pem -certfile ca-chain.pem

# Convert a PKCS#12 file (.pfx .p12) containing a private key and certificates back to PEM
openssl pkcs12 -in keystore.pfx -out keystore.pem -nodes
```

* Verify CSRs or Certificates

```
# Verify a CSR signature
openssl req -in example.csr -verify

# Verify that private key matches a certificate and CSR
openssl rsa -noout -modulus example.key | openssl sha256   
openssl x509 -noout -modulus example.crt | openssl sha256  
openssl req -noout -modulus example.csr | openssl sha256   

# Verify certificate when the root and any intemediate certificates is configured as trusted on your machine
openssl verify example.crt

# Verify certificate when the intermediate certificate chain is untrusted but Root certificate is trusted on machine.
openssl verify -untrusted intermediate-ca-chain.pem example.crt

# Verify certificate when intermediate certificate chain and root certificate is not configured as a trusted one.
openssl verify -CAFile root.crt -untrusted intermediate-ca-chain.pem child.crt

# Verify that a certificate served by a remote server covers the given host name. 
# This is useful to check your mutlidomain certificate properly covers all the host names.
openssl s_client -verify_hostname www.example.com -connect example.com:443
```

* TLS Secure Client to Connect to a Remote Server Using s_client

```
# Connect to a server supporting TLS and print SSL Certificate Details
# - Use s_client to run in client mode
# - Use -connect to connect to a server
# - Specify domain name along with its SSL port 443
# - Redirect /dev/null to get a clean terminal output
openssl s_client -connect google.com:443 < /dev/null
openssl s_client -host example.com -port 443 < /dev/null

# Connect to a server and show full certificate chain using the option -showcerts
openssl s_client -showcerts -connect www.google.com:443 < /dev/null     

# Connect using TLSv1.2 only using the option -tls1_2
openssl s_client -connect -tls1_2 qualys.com:443 < /dev/null

# Extract the certificate
openssl s_client -connect example.com:443 2>&1 < /dev/null | sed -n '/-----BEGIN/,/-----END/p' > certificate.pem

# Override SNI (Server Name Indication) extension with another server name. 
# This is useful for testing when multiple secure sites are hosted on same IP address.
openssl s_client -servername www.example.com -host example.com -port 443

# Test TLS connection by forcibly using specific cipher suite. 
# Example, ECDHE-RSA-AES128-GCM-SHA256. 
# This is useful to check if a server can properly talk via different configured cipher suites, not the one it prefers.
openssl s_client -host example.com -port 443 -cipher ECDHE-RSA-AES128-GCM-SHA256 2>&1 </dev/null
```

* Measure TLS Connection and Handshake Time Using s_time

```
# Measure SSL connection time without/with session reuse
openssl s_time -connect example.com:443 -new
openssl s_time -connect example.com:443 -reuse

# Roughly examine TCP and SSL handshake times using curl
curl -kso /dev/null -w "tcp:%{time_connect}, ssldone:%{time_appconnect}\n" https://example.com

# Measure speed of various security algorithms
openssl speed rsa2048
openssl speed ecdsap256
```

* Secure Server Using s_server

```
# Start an SSL server on port 4443
# - Private key and a certificate is required to run an SSL server
# - Terminal will keep showing you how to connect to the server
# - This can help simulate SSL server on a local machine for testing
openssl s_server -cert example.crt -key example.key -www -accept 4443
```

* List SSL Ciphers Using ciphers

```
# Display all ciphers information
openssl ciphers -v

# Display information about a particular cipher
openssl ciphers -v 'DHE-RSA-AES256-SHA'

# Enumerate all individual cipher suites, which are described by a short-hand OpenSSL cipher list string. 
# This is useful when you’re configuring server (like Nginx), and you need to test your ssl_ciphers string.
openssl ciphers -v 'EECDH+ECDSA+AESGCM:EECDH+aRSA+SHA256:EECDH:DHE+AESGCM:DHE:!RSA!aNULL:!eNULL:!LOW:!RC4'
```

* Get Certification Revocation Status

```
# Check Certification Revocation List Using CRL
# Get the CRL URL from any SSL certificate and get its Certificate Revocation List
curl -s http://pki.google.com/GIAG2.crl  | openssl crl -inform DER -text -noout -in /dev/stdin

# Check Certification Revocation List Using OCSP responder
# This is a multi-step manual process
# 1. Retrieve the certificate from a remote server
openssl s_client -connect example.com:443 2>&1 < /dev/null | sed -n '/-----BEGIN/,/-----END/p' > cert.pem

# 2. Obtain intermediate CA certificate chain. 
#    Use -showcerts flag to show full certificate chain & manually save all intermediate certificates to chain.pem file
openssl s_client -showcerts -host example.com -port 443 </dev/null

# 3. Read OCSP endpoint URI from the certificate
openssl x509 -in cert.pem -noout -ocsp_uri

# 4. Request a remote OCSP responder for certificate revocation status using the URI from the above step 
# Example, http://ocsp.stg-int-x1.letsencrypt.org. 
openssl ocsp -header "Host" "ocsp.stg-int-x1.letsencrypt.org" -issuer chain.pem -VAfile chain.pem -cert cert.pem -text -url http://ocsp.stg-int-x1.letsencrypt.org
```

#### Generic Encryption Decryption Functions
* Working with Message Digests 

```
# Calculate md5, sha1, sha256, sha384, sha512 digests
# General syntax 
# openssl dgst -[hash_function] < input.file
# cat input.file | openssl [hash_function]
cat input.file | openssl sha256

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

* Encoding and Decoding Using base64

```
# Base64 Encoding
openssl base64 -in file.txt -out file.txt.base64

# Decode Base64 encoded data
openssl base64 -d -in file.txt.base64 -out file.txt                       
```

* Encryption and Decryption Using enc

```
# Encrypt a plain text file
openssl enc -aes-256-cbc -salt -in file.txt -out file.txt.enc [-k PASS]   

# Decrypt an encrypted file
openssl enc -aes-256-cbc -d -in file.txt.enc -out file.txt [-k PASS]      
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
