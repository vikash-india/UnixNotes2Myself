# Description: Hard Disk Administration on Ubuntu Using parted

## Install a New Hard Drive on Ubuntu
### Determine Hard Drive Information

```shell
sudo lshw -C disk

# Note the "logical name" entry from the output
*-disk
       description: ATA Disk
       product: IC25N040ATCS04-0
       vendor: Hitachi
       physical id: 0
       bus info: ide@0.0
       logical name: /dev/sdb
       version: CA4OA71A
       serial: CSH405DCLSHK6B
       size: 37GB
       capacity: 37GB

# Alternate way to find the size of the current disk (If logical name is known)
sudo fdisk -l /dev/sdb

# Sample output will be as follows
Disk /dev/sdb: 4000.8 GB, 4000787030016 bytes
255 heads, 63 sectors/track, 486401 cylinders, total 7814037168 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk identifier: 0x00000000
```

### Partition The Disk using parted

```shell
sudo parted /dev/sdb

# Type 'help' to see all the options

# Creates a new GPT disklabel i.e. partition table:
mklabel gpt

# Type 'Yes' to confirm to "Warning: The existing disk label on /dev/sdb will be destroyed and all data on this disk  
# will be lost. Do you want to continue?"

# Set the default unit to TB.
unit TB

# Create a 4TB partition size, 
mkpart primary 0.00TB 4.00TB

# Print the current partitions.
print

# Sample output will be as follows
Model: ATA ST33000651AS (scsi)
Disk /dev/sdb: 3.00TB
Sector size (logical/physical): 512B/512B
Partition Table: gpt

Number  Start   End     Size    File system  Name     Flags
 1      0.00TB  3.00TB  3.00TB  ext4         primary

# Quit and save the changes
quit

# Sample output will be as follows
Information: You may need to update /etc/fstab.
```

### Format the new partition as ext4 file system.

```shell
sudo mkfs.ext4 /dev/sdb1
sudo mkfs -t ext4 /dev/sdb1     # Alternative
```

### Create A Mount Point
```shell
sudo mkdir /media/harddisk_2
```

### Add Automatic Mount At Boot
```shell
sudo vim /etc/fstab

# Add the following entry to the table 
/dev/sdb1    /media/harddisk_2   ext4    defaults     0        1
```

### Mount or Restart the machine
- Either reboot the computer to have the changes take effect or execute the following command.
```shell
sudo mount -a
```

### Confirm Hard Disk Setup After Restarting Machine
```shell
sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL
```

### TODO
* None
