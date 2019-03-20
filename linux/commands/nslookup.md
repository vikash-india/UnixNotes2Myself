# Description: The nslookup Command

### Notes
* The nslookup command queries Internet Name Servers Interactively.
* The `nslookup` stands for "name server lookup".
* It is a useful tool for finding out information about a named domain.
* The nslookup tool has two modes
    - Interactive: The interactive mode allows the user to query name servers for information about various hosts and 
      domains or to print a list of hosts in a domain.
    - Non-interactive: Non-interactive mode is used to print just the name and requested information for a host or 
      domain.
* The nslookup uses the configuration file `/etc/nsresolv.conf`, if it exists, for any special DNS configuration. This 
  file is managed using the command line program resolvconf.
* The `dig`, `host` and `nslookup` provide the same functions and dig has more functionality than the other two. 

### Common Examples
```shell
nslookup -type=any microsoft.com
nslookup -type=soa microsoft.com
```

### Examples With Details
#### Display Short DNS Summary
```shell
nslookup microsoft.com

# Output
Server:		127.0.1.1
Address:	127.0.1.1#53

Non-authoritative answer:
Name:	microsoft.com
Address: 23.96.52.53
Name:	microsoft.com
Address: 191.239.213.197
Name:	microsoft.com
Address: 104.40.211.35
Name:	microsoft.com
Address: 104.43.195.251
Name:	microsoft.com
Address: 23.100.122.175
```
* The `127.0.1.1` in the output `Server:		127.0.1.1` is the address of our system's Domain Name Server. This is 
  the server our system is configured to use to translate domain names into IP addresses. 
* The `#53` in the output `Address:	127.0.1.1#53`  part `127.0.1.1#53` in indicates the port number 53, which is the 
  standard port number domain name servers use to accept queries.
* Our name server returned multiple entries, 23.96.52.53, 191.239.213.197, 104.40.211.35, 104.43.195.251 and 
  23.100.122.175. This indicates that microsoft.com uses a round robin setup to distribute server load.
* We have received a "Non-authoritative answer" to our query. An answer is "authoritative" only if our DNS has the 
  complete zone file information for the domain in question. More often, our DNS will have a cache of information 
  representing the last authoritative answer it received when it made a similar query; this information is passed on to 
  you, but the server qualifies it as "non-authoritative": the information was recently received from an authoritative 
  source, but the DNS server is not itself that authority.

#### Use the syntax `nslookup [-type=a] example.com` to get a particular type of DNS records
```shell
nslookup -type=a example.com                    # Display DNS A record. Find the domain IP.
nslookup -type=mx example.com                   # Display DNS MX records. Find the Domain Mail Server. 
nslookup -type=txt example.com                  # Display DNS TXT records. Find the SPF, DKIM etc records.
nslookup -type=ns example.com                   # Display DNS NS records. Find the Domain Name Servers.
nslookup -type=cname example.com                # Display DNS CNAME records. Find the Domain CNAME records.
nslookup -type=soa example.com                  # Display DNS SOA records. Find Out the Domain SOA Record
nslookup -type=any microsoft.com                # Display all available DNS record. 

nslookup -port=54 microsoft.com                 # Querying On A Non-Standard Port

nslookup -debug microsoft.com                   # Use -debug option to examine the details of the query closely.

nslookup 134.170.185.46                         # Reverse DNS Lookups
```

#### Query MX Records
```shell
nslookup -type=mx google.com                  # Display DNS MX records. Find the Domain Mail Server. 
```
* The mail exchanger address is prefixed with a number (10 or 20,30, 40 or 50). 
* If there were more than one mail exchanger, they would each have a different number, with the lower numbers 
  representing a higher priority. So if there were another exchanger with the prefix 5, that server would take 
  precedence over the server listed here.

#### Query SOA Records
```shell
nslookup -type=soa microsoft.com

# Output
Server:     8.8.8.8
Address:    8.8.8.8#53

Non-authoritative answer:
microsoft.com
    origin = ns1.msft.net
    mail addr = msnhst.microsoft.com
    serial = 2014110802
    refresh = 7200
    retry = 600
    expire = 2419200
    minimum = 3600
```
* **origin:** The authority from which the information originated.
* **mail addr:** The email address of the domain administrator (The first dot would be an @ symbol in an email address, 
  so here the email address is msnhst@microsoft.com).
* **serial:** Revision data for this information, in the form YYYYMMDDNN. Here, the information is current as of 
  August 11, 2014; 02 means it was the second revision made on that day.
* **refresh:** A number representing the interval, in seconds, after which the secondary name server will check the 
  primary name server for an updated revision of this information. This information tells us that the secondary 
  Microsoft name server's information is never more than two hours (7200 seconds) out of date.
* **retry:** The secondary nameserver will wait this many seconds before attempting to reconnect to the primary name 
  server after a failed attempt.
* **expire:** The secondary nameserver's cache of the primary nameserver's information will always be considered invalid 
  after this many seconds.
* **minimum:** The secondary nameserver's cache of the primary nameserver's information should not be refreshed if this 
  amount of time has not elapsed since the last refresh.

#### Querying Another DNS
```shell
nslookup microsoft.com ns1.msft.net
nslookup microsoft.com 8.8.8.8
```
* By default, nslookup will query the same DNS the system is configured to use for all network operations. A
  custom DNS can be specified to query.
* This is useful for obtaining authoritative information. 
* This is also useful in finding out exactly what information a certain DNS currently has cached.

#### Interactive Mode
```shell
 
nslookup

>example.com
Server:		127.0.1.1
Address:	127.0.1.1#53

Non-authoritative answer:
Name:	example.com
Address: 93.184.216.34

>set type=any

>example.com
;; Truncated, retrying in TCP mode.
Server:		127.0.1.1
Address:	127.0.1.1#53

Non-authoritative answer:
Name:	example.com
Address: 93.184.216.34
.
.
.
>exit
```

### Cool Tricks
* None

### TODO
* None
