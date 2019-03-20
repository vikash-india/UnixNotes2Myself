# Description: The dig Command

### Notes
* The dig command is a DNS lookup utility.
* The dig (domain information groper) is a flexible tool for interrogating DNS name servers.
* Most DNS administrators use dig to troubleshoot DNS problems because of its flexibility, ease of use and clarity of 
  output. 
* The `dig`, `host` and `nslookup` provide the same functions and dig has more functionality than the other two. 

### Common Examples
```shell
dig example.com
```

### Examples With Details
#### Display Short DNS Summary
```shell                                # Display DNS Summary Record.
dig example.com
```

#### Use the syntax `dig @{ns1.example.com} {example.com} [TYPE]` to get a particular type of DNS records
```shell
dig example.com a                       # Display DNS A record. Find the domain IP.
dig example.com mx                      # Display DNS MX records. Find the Domain Mail Server.
dig example.com txt                     # Display DNS TXT records. Find the SPF, DKIM etc records.
dig example.com ns                      # Display DNS NS records. Find the Domain Name Servers.
dig example.com cname                   # Display DNS CNAME records. Find the Domain CNAME records.

dig example.com soa                     # Display DNS SOA records. Find Out the Domain SOA Record
dig +nssearch example.com               # Display SOA records.

dig example.com any                     # Display all DNS records and all sections.
dig +noall +answer example.com any      # Display all DNS records but just the answer section

dig +short example.com                  # Get only short answer

dig @b.iana-servers.net example.com a   # Query a particular name server returned by NS records.
```

#### Trace Domain Delegation Path
* Check how domains are resolved using root servers i.e. turn on tracing of the delegation path from the root name 
  servers for the name being looked up. 
* When tracing is enabled, dig makes iterative queries to resolve the name being looked up. It will follow referrals 
  from the root servers, showing the answer from each server that was used to resolve the lookup.
```shell
dig +trace example.com
```

#### Reverse IP Lookup
```shell
dig -x +short 93.184.216.34 
```

#### Find Out TTL Value
```shell
dig +nocmd +noall +answer a cyberciti.biz
```

#### Find My IP
```shell
dig +short myip.opendns.com @resolver1.opendns.com
```

### Cool Tricks
* None

### TODO
* Understand each and every field of the output.