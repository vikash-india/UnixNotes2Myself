# Description: Setup Time Synchronization on Ubuntu

### Note
1. Setup appropriate timezone on a machine.  
2. Setup ntp to synchronize the system clock to the standard time maintained by a global network of NTP servers. 

### Setup Timezone
```
# List available timezones
timedatectl list-timezones  # Use the space key to scroll to the next page. 
                            # Use the b key to scroll previous page. 
                            # Use the q key to quit.

# Set appropriate timezone
sudo timedatectl set-timezone Asia/Kolkata

# Verify if the timezone is set correctly. 
timedatectl

# Alternatively, verify if the symbolic link is pointing to the correct timezone.
ll /etc/localtime
```

### Install ntp (If not installed already)
```
which ntpd

sudo apt-get update
sudo apt-get install ntp

NOTE: As soon as NTP is intalled, time synchronization is enabled.
```

### Query NTP Servers
```bash
sudo apt-get install ntpq

# Query NTP Servers
ntpq -p
```

### TODO
* None
