# Description: The hostname Command

### Notes
* The hostname command is used to show or set the system's host name.

### Common Examples
```shell
hostname
```

### Examples With Details
```shell
# Get host Information
hostname                        # mars.example.com
hostname -s                     # mars (for mars.example.com). Display short hostname from the full domain name.
hostname --fqdn                 # mars.example.com or localhost etc.
hostname -a                     # mars.example.com. Display alias name associated with the host (if any).
hostname -i                     # Display the IP address associated with the host.
hostname -d                     # Display the associated domain name (if any).

# Change Hostname
hostname new-hostname           # Change the hostname.
```

### Cool Tricks
* None

### TODO
* None
