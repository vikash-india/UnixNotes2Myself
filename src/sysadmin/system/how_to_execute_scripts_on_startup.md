# Description: Execute Scripts on OS Statup

### 1. Edit the FILE /etc/rc.local and add the commands
```
sudo gvim /etc/rc.local
```

### 2. Add the command to be executed on startup.
```
# Adjust the default monitor brightness
echo 9 > /sys/class/backlight/acpi_video0/brightness

# Make sure that the script must always end with exit 0
```

### 3. Save the file and exit.