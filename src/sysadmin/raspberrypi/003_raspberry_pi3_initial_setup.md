# Description: Initial Setup of Raspbian on Raspberry Pi

### Install Raspbian
```bash
# Insert the SD card.

# Find mount point and device name
df

# Unmount the SD card
umount /media/sdcardlabel

# Format SD card to FAT 32 filesystem
sudo mkdosfs -F 32 -v /dev/mmcblk0

# Create Startup Disk
# 1. Unzip 2017-04-10-raspbian-jessie.zip to 2017-04-10-raspbian-jessie.img 
# 2. Open Startup Disk Creator from Dash.
# 3. Use 2017-04-10-raspbian-jessie.img to create the startup disk.

# Insert the SD Card into Raspberry Pi and boot.
```

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

### Initial Rasbian Configuration Using raspi-config CLI Tool or GUI Tool

```bash
# Use the CLI tool
sudo raspi-config

# Alternatively, use the GUI tool
Open the Raspberry Pi Configuration Settings by navigating to Menu => Preferences => Raspberry Pi Configuration.
```

Use the tool to make following changes
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
1. Login to Router.
2. Assign static IP to raspberry pi machine.

### Accessing Remotely Without Monitor
1. Use SSH for commandline access. 
2. Download and use VNC Viewer from Real VNC for desktop/GUI access.
3. Use Nautilus → Connect to Server → Enter ssh://pi@[hostname] to access SCP/SFTP GUI.

### Raspbian Customisation
1. Add .bashrc aliases.
2. Setup Python Virtual Environments

### TODO
- Visualisation for temperature.
- Add Heatsink after a couple of days of temperature.
- Backup of SD Card.
- Deploy network manager script if required.
