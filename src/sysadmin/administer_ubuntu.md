# Description: Upgrade Software Through Terminal

### Upgrade OS
```
sudo apt-get update         # Fetches the list of available updates.
sudo apt-get upgrade        # Installs updates.
# OR
sudo apt-get dist-upgrade   # Optionally run this for major upgrades.
```

### Ubuntu Tweaks

#### Turn Off Guest Login
```
# Edit the following file
sudo gvim /etc/lightdm/lightdm.conf

# Add the following entry in the file
[SeatDefaults]
user-session=ubuntu
greeter-session=unity-greeter
allow-guest=false

# Save and exit.

# Restart the system and the guest login is gone
```

#### Add "Open In Terminal" Option to Nautilus Context Menu
```
# Install the nautilus-open-terminal package
sudo apt-get install nautilus-open-terminal

# Then reset Nautilus
nautilus -q
```

#### Adjust The Default Brightness of the Screen
```
# Edit the rc.local file
sudo gvim /etc/rc.local

# Add the following before the last line "exit 0"
echo 10 > /sys/class/backlight/acpi_video0/brightness

# Save and exit

# Note
# 1. Check the maximum brightness using the command
cat /sys/class/backlight/acpi_video0/max_brightness
# 2. Number 10 is the value chosen for the screen brightness. The value ranges from 1 to 15 for Lenovo Thinkpad T530.
```

#### Start Terminal in Maximised mode
```
# Edit the gnome-terminal.desktop file
sudo gvim /usr/share/applications/gnome-terminal.desktop

# Add the following options as part of Exec key
--maximize
```

#### Remove Amazon Lens from Ubuntu Unity Dash
- System Settings - Security & Privacy - Click on the Search tab, and toggle the "Include online search results" option
  to Off.

#### Redirect All mailto Link to Gmail in Firefox
- Go to Firefox - Tools > Options > Applications > (Search for) mailto > Set it to Gmail

