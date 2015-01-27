# Description: reboot, halt, poweroff - Reboot or stop the system

# Notes
# None

# Common Examples

# Examples with details
halt -f             # Force Stop the system. Located in /sbin/halt.
halt -p             # Do a poweroff while halting. This is the default when poweroff is used.
halt -i             # Shutdown all interfaces before halting.
halt -h             # Shutdown all hard drive before halting.
halt -ihf           # Shuts down all the hard drive, interfaces before doing a force shutdown.

# Cool Tricks
# None

# TODO
# 1. Understand the difference between halt, poweroff, reboot or shutdown etc
