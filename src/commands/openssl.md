# Description: openssl - OpenSSL command line tool

### Notes
* None

### Common Examples
```
openssl s_client -connect google.com:443 < /dev/null
openssl s_client -connect google.com:443 < /dev/null | openssl x509 -in /dev/stdin -text -noout
```

### Examples with details
```
openssl s_client -connect google.com:443 < /dev/null            # Get a domain's SSL Certificate Details
                                                                # - Use s_client to run in client mode
                                                                # - Use -connect to connect to a server
                                                                # - Specify domain name along with its SSL port 443
                                                                # - Redirect /dev/null to get a clean terminal output
```

```
openssl s_client -connect google.com:443 < /dev/null | openssl x509 -in /dev/stdin -text -noout # Browser style output
                                                                # - Use x509 option to specify the certificate standard
                                                                # - Use -in /dev/stdin option to read the content from standard input
                                                                # - Use -text option to to display readable text content
                                                                # - Use -noout so that PEM certificate is not spitout
```

* Convert PEM encoded certificate to DER encoded certificate
```
openssl x509 -in ServerCertificate.cer -outform der -out ServerCertificate.der
```

* Convert DER encoded certificate to PEM encoded certificate
```
openssl x509 -in ServerCertificate.der -inform der -outform pem -out ServerCertificate.pem
```

### Cool Tricks
# None

# TODO
# None
