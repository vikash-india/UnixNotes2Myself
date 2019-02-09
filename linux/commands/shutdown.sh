# Description: shutdown - Bring the system down

# Notes
# None

# Common Examples

# Examples with details
sudo shutdown now           # Shutdown immediately. Bring the system down in a secure way. Located in /sbin/shutdown
sudo shutdown -h now        # Halt now. Do su or sudo
sudo shutdown -r now        # Reboot now. Do su or sudo
shutdown -h -t 10           # Halt the system after 10 seconds
shutdown -r -t 10           # Reboot the system after 10 seconds
shutdown -P -t 10           # Poweroff the system after 10 seconds

# Cool Tricks
# None

# TODO
# 1. How is this different from halt, poweroff, reboot.
