# Description: Unbound Administration on Ubuntu

### Note
* Check /usr/share/doc/unbound/examples/unbound.conf for a commented reference config file after installation.
* Root key location: /var/lib/unbound/root.key
* Get root hints and place it on path /var/lib/unbound/root.hints.

```bash
# Place the downloaded file on the path /var/lib/unbound/root.hints
wget ftp://FTP.INTERNIC.NET/domain/named.cache -O /var/lib/unbound/root.hints

# Set the ownership
sudo chown root:root /var/lib/unbound/root.hints
```

### Install Unbound
```bash
# Install Unbound
apt-get install unbound
```

### Configure Unbound
```bash
# Configure the files

# Restart the file
/etc/init.d/unbound restart
```

### Allow People to use hostnames without the .local part
- [Source](https://www.unbound.net/pipermail/unbound-users/2011-March/001733.html)

```
[TODO: THIS HAS TO BE DONE IN HEAD on HAWK]
Simply edit your /etc/resolv.conf, and add a domain or search directive, on each of your servers
# cat /etc/resolv.conf
search local 
nameserver 127.0.0.1

# cat /etc/unbound.conf | grep "\.local"
    local-data: "testing.local IN A 127.0.0.5"

# ping testing
PING testing.local (127.0.0.5) 56(84) bytes of data.
64 bytes from 127.0.0.5: icmp_seq=1 ttl=64 time=0.055 ms
```
include: "/etc/unbound/localnetwork.conf"


## Change your local DNS server to point to this new machine
- If you are using ubuntu 14.04, you may find you can not setting dns on your /etc/resolv.conf.
- This is because ubuntu using resolvconf to manage the dns setting, every times system boot, resolvconf will regenerate resolv.conf file.

```bash
sudo vim /etc/resolvconf/resolv.conf.d/head  

# Put your nameserver list in
nameserver 8.8.8.8
nameserver 8.8.4.4 

nameserver 192.168.0.21

Then run to regenerate the file 
sudo resolvconf -u

# Check /etc/resolv.conf 
cat /etc/resolv.conf 
```

### Check the DNS Servers Used Locally
```bash
nmcli dev show enp0s25 | grep -i dns
```

### Other Addresses
```bash
# Run the following on Vikash 
nmcli dev show enp0s25 | grep -i dns

# Add the output IP of the above to DNS server cat /etc/resolv.conf on hawk
# Actually add it to the head
sudo vim /etc/resolv.conf

nameserver 202.83.21.12
nameserver 202.83.20.100
```

### TODO
* This needs to be updated.
* Add the log file details.
* Understand the other file locations.
* Understand all the terms.
