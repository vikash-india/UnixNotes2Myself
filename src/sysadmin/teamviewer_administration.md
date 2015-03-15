# Description: Teamviewer Administration on Ubuntu

### Install Teamviewer
```
# check official website and follow instructions from there.
```

### Manage Teamviewer Daemon
```
sudo teamviewer --daemon stop           # Daemon will start again during next reboot.

sudo teamviewer --daemon disable        # Disable teamviewer on startup.
sudo teamviewer --daemon enable         # Enable teamviewer on startup.

sudo update-rc.d teamviewerd remove     # Alternative way to prevent teamviewer from starting.
```
