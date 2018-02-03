# Description: Auto Mount Ext4 Disk

### Mount an Ext4 Disk Automatically
1. Boot Raspberry Pi3 and plug in the disk
```bash
# Create a location for mount point
sudo mkdir /media/saturn

# Give proper permission to the directory.
sudo chmod 770 /media/saturn

# Get the uid, gid for pi user and group (Both are usually 1000)
id

# Manually mount and check if it is accessible
sudo mount -t ext4 -o defaults /dev/sda1 /media/saturn/

# Get the UUID info of the harddisk and note it down
ls -l /dev/disk/by-uuid/

# Add the fstab entry for auto mounting
# IMPORTANT
# - Use the nofail option to continue boot even if disk is not attached during boot. Otherwise boot will fail.
# - Use the auto option to mount it automatically whenever the disk is attached even after the boot.
# - Unlike NTFS filesystem, DO NOT use uid,gid for ext4 filesystem.
UUID=8e3h4h85-n90r-5dee-93ca-8d93j38e23a8 /media/pluto ext4 nofail,auto,defaults 0 0
```

### TODO
- None
