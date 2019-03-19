# Description: The host Command

### Notes
* The host tool is a simple utility for performing DNS lookups.
* The `dig`, `host` and `nslookup` provide the same functions and dig has more functionality than the other two. 

### Common Examples
```shell
host -t any example.com
host 93.184.216.34
```

### Examples with details
#### Display Short DNS Summary
```shell
host example.com                        # Without arguments, a short DNS summary is displayed.
```

#### Use the syntax `host -t TYPE example.com` to get a particular type of DNS records
```shell
host -t a example.com                   # Display DNS A record. Find the domain IP.
host -t mx example.com                  # Display DNS MX records. Find the Domain Mail Server. 
host -t txt example.com                 # Display DNS TXT records. Find the SPF, DKIM etc records.
host -t ns example.com                  # Display DNS NS records. Find the Domain Name Servers.
host -t cname example.com               # Display DNS CNAME records. Find the Domain CNAME records.
host -t soa example.com                 # Display DNS SOA records. Find Out the Domain SOA Record
```

#### Display All Information About Domain Records and Zone
```shell
host -a example.com                     # Use -a option to make a query of type any.
host -t any example.com                 # Same as above.
```

#### Reverse IP Lookup
```shell
host 93.184.216.34
```

#### Query Particular Name Server
```shell
host example.com b.iana-servers.net.    # The b.iana-servers.net. is one of the servers returned by the option '-t ns'
```

#### Use IPv6 Query Transport
* Note: There must be IPV6 based connectivity including IPv6 enabled resolving name servers.

```shell
host -6 example.com
host -6 -a example.com
host -6 example.com b.iana-servers.net.
host -6 -t ns example.com b.iana-servers.net.
```

#### Get TTL Information
```
# If you run the same command again, the TTL number (8101) below will be reduced.
host -v -t a example.com

# Output
# ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 61087
# ;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0
# 
# ;; QUESTION SECTION:
# ;example.com.			IN	A
# 
# ;; ANSWER SECTION:
# example.com.		8101	IN	A	93.184.216.34
```

### Cool Tricks
* None

### TODO
* Understand other types of records that can be entered in DNS Zone File.
