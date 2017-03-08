# Description: Initial Setup For Raspberry Pi

### Update Raspbian to the Latest Version
```bash
sudo apt-get update
sudo apt-get dist-upgrade
```

### Install Software
```bash
# Install Gvim
sudo apt-get install vim-gtk
```

### Initial Setup Using raspi-config CLI Tool or GUI Tool

```bash
# Use the CLI tool
sudo raspi-config

# Alternatively, use the GUI tool
Open the Raspberry Pi Configuration Settings by navigating to Menu => Preferences => Raspberry Pi Configuration.
```

Use the GUI to make following changes
1. Change Password
2. Change Hostname
3. Expand Storage
4. Enable SSH
5. Enable VNC
6. Use Localisation to set Locale, Timezone and Keyboard options.  

### Setup WiFi
```bash
# Install Wicd-curses
sudo apt-get update
sudo apt-get install wicd-curses

# Start wicd-curses
sudo wicd-curses

# Now choose an SSID and enter the password.

# Alternatively, use the GUI to setup WiFi.
```

### Setup Static IP
1. Login to Router
2. Assign static IP to raspberry pi machine.

### TODO
- Setup FSTAB for External Harddisk
- Setup Temperature Control