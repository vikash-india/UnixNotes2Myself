# Description: Certificate Provisioning

### Steps for Certificate Provisioning
* Certificate request and CA signing.
* Certificate installation
* Certificate Verification
* Certificate Revocation

### Certificate Request and Signing
1. Generate private key and certificate signing request

```
# Generate private key
openssl genrsa -out mysite.key 4096

# Generate certificate signing request
openssl req -new -key mysite.key -out mysite.csr

# Enter appropriate details
Country Name (2 letter code) [AU]:IN
State or Province Name (full name) [Some-State]:Karnataka
Locality Name (eg, city) []:Bangalore
Organization Name (eg, company) [Internet Widgits Pty Ltd]:Example Private Limited
Organizational Unit Name (eg, section) []:Operations
Common Name (e.g. server FQDN or YOUR name) []:www.example.com
Email Address []:info@example.com

Please enter the following 'extra' attributes
to be sent with your certificate request
A challenge password []:<Somepassword>
An optional company name []:<Somepassword>
```

2. Send mysite.csr to a CA

3. Get it signed by CA and obtain a mysite.crt
    - CA computes the SHASUM of the certificate's data section.
    - Encrypts the checksum value using CA's private key.
    - Append the signature to the certificate and send back to the requester.

Note
* Create Self-signed Certificate

```
# Generate a private key and a self signed certificate for 365 days
openssl req -x509 -newkey rsa:4096 -keyout mysite.key -out mysite.crt -days 365

# View the content of the certificate file in text format
openssl x509 -in mysite.crt -text -noout
```

* Security
    - Choose Key length 
        * RSA 2048 bit
        * ECC 192 bit
    - Keep your private key secure
    - Check your signing hashing algorithm
        * SHA2 or more
        * Changing the signing algorithm means renewing the certificate and will need to installed again.
    - Choose a reliable CA

### Certificate Installation
* Install Certificate on Apache

```
<VirtualHost 192.168.0.1:443>
    DocumentRoot /var/www/html2
    ServerName www.yourdomain.com
        SSLEngine on
        SSLCertificateFile /path/to/your_domain_name.crt
        SSLCertificateKeyFile /path/to/mysite.key
        # (Optional) Intermediate Certificate
        SSLCertificateChainFile /path/to/DigiCertCA.crt
    </VirtualHost>
    .
    .
    .
</VirtualHost>
```
* Install Certificate on Nginx

```
server {
    listen   443;
    
    ssl    on;
    # Or combine both the cert using the command cat mysite.crt intermediate.crt >> bundle.crt
    ssl_certificate    /etc/ssl/your_domain_name.pem; (or bundle.crt)
    ssl_certificate_key    /etc/ssl/your_domain_name.key;
    
    server_name your.domain.com;
    access_log /var/log/nginx/nginx.vhost.access.log;
    error_log /var/log/nginx/nginx.vhost.error.log;

    location / {
        root   /home/www/public_html/your.domain.com/public/;
        index  index.html;
    }
    .
    .
    .
}
```

Note
* Certificate can be installed on load balancers or webservers. If the certificate is installed on load balancers then 
  the SSL ends on the load balancer. 
* [Certificate Installation On Different Platforms](https://www.digicert.com/ssl-certificate-installation.htm)
* Security
    - Choose proper ciphers
        - No RC4
        - No AES-CBC with SSLv3 & TLSv1.0(Beast & Lucky13)
        - AES-GCM
        - Disable the export and null cipher suite, as well as cipher suites using RC4/3/3DES. 
        - Good to use AWS256-SHA for TLSv1.1 and AES256-GCM-SHA256 for TLSv1.2.
    - Choose Protocol Version
        - TLSv1.1 or TLSv1.2

### Certificate Verification
* Using a Browser
    - Visit [https://www.ssllabs.com/ssltest/](https://www.ssllabs.com/ssltest/)
    - Enter the domain name and submit
    - Wait for the result to show up.

### Certificate Revocation
* When to Revoke a Certificate
    - Subscriber's private key is compromised
    - CA's private key is compromised
    - Affiliation changed
    - Cessation of operations etc.
* Ways to Revoke Certificate
    - Certificate Revocation List (CRL)
        - RFC 5280
        - This is hosted by the CA.
        - Query to CRL will return the entire list of certificates revoked by the client.
    - Online Certificate Status Protocol (OSCP)
        - RFC 2560
        - This is hosted also by the CA.
        - Query to OSCP will return the just the certificate with a particular serial number.

### SSL Errors
* SSL Errors Reference: [Live Demo by Chromium Projects](https://badssl.com/)
* Common SSL Errors
    - SSL_ERROR_NO_CERTIFICATE: When key is not installed or issuer is not marked as trusted.
    - SSL_ERROR_WRONG_CERTIFICATE: When client authentication fails. The private key and public key do not match.
    - SSL_ERROR_UNSUPPORTED_VERSION: One of the peers is using a version that is not on the list of the other peer.
    - SSL_ERROR_BAD_CERT_DOMAIN: Domain name does not match with server certificate.
    - SSL_ERROR_UNKNOWN_CIPHER_SUITE: Cipher suite requested by the peer is not supported by the other one even if TLS 
      version is same.
    - SSL_ERROR_UNKNOWN_CA_ALERT: The peer does not trust the CA of the certificate issuer. 
    - SSL_ERROR_UNKNOWN_CERT_ALERT: The peer certificate has been revoked.

### TODO
* None
