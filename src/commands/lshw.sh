# Description: lshw - list hardware

# Notes
# 1. lshw is a small tool to extract detailed information on the hardware configuration of the machine. It can report
#    exact memory configuration, firmware  version, mainboard configuration, CPU version and speed, cache configuration,
#    bus speed, etc. on DMI-capable x86 or IA-64 systems and on some PowerPC machines (PowerMac G4 is known to work).
# 2. The lshw command must be run as super user or it will only report partial information.

# Common Examples
sudo lshw -short
sudo lshw -C memory
sudo lshw -C disk
sudo lshw -C disk -short

# Examples with details
sudo lshw -short            # Display the device tree showing hardware paths.
sudo lshw -businfo          # Display the device list showing bus information, detailing SCSI, USB, IDE, PCI addresses.
sudo lshw -class disk       # Only show the given class of hardware. The class can be found using lshw -short or
                            # lshw -businfo.
sudo lshw -C disk           # Same as above. The -C flag is an alias for -class class.
sudo lshw -C disk -short    # Display the short info for the disk class hardware.

sudo lshw -html             # Outputs the device tree as an HTML page.
sudo lshw -xml              # Outputs the device tree as an XML tree.
sudo lshw -json             # Outputs the device tree as a JSON object.

lshw -version               # Display version info

# Cool Tricks
# None

# TODO
# None
