# Description: Auto Mount External Hard Disk

### Mount an NTFS External Harddisk Automatically
1. Boot Raspberry Pi3 and plug in the external harddisk.
```bash
# Install a better NTFS driver
sudo apt-get install ntfs-3g

# Create a location for mount point
sudo mkdir /media/saturn

# Give proper permission to the directory.
sudo chmod 770 /media/saturn

# Get the uid, gid for pi user and group (Both are usually 1000)
id

# Manually mount and check if it is accessible
# Note: Use ntfs-3g for NTFS Drives, vfat for FAT32 Drives, ext4 for ext4 Drives in the following commands.
sudo mount -t ntfs-3g -o uid=1000,gid=1000,umask=007 /dev/sda1

# Get the UUID info of the harddisk and note it down
ls -l /dev/disk/by-uuid/

# Add the fstab entry for auto mounting
# IMPORTANT
# - Use the nofail option to continue boot even if harddisk is not attached during boot. Otherwise boot will fail.
# - Use the auto option to mount it automatically whenever the harddisk is attached.
UUID=346244099865F63A /media/saturn ntfs-3g nofail,auto,uid=1000,gid=1000,umask=007 0 0
```

# TODO
# None
