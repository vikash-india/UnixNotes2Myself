# Description: The parted Command

### Notes
* The parted command is GNU Partition Manipulation Program.
* The parted command is a disk partitioning and partition resizing program.
* The GNU parted command with GPT can be used to create Linux filesystems greater than 2 Terabytes which is not
  possible with fdisk commands.
* It can be used to create, destroy, resize, move and copy ext2, linux-swap, FAT, FAT32, and reiserfs partitions. It
  can create, resize, and move Macintosh HFS partitions, as well as detect jfs, ntfs, ufs, and xfs partitions.
* It is  useful  for  creating space for new operating systems, reorganising disk usage, and copying data to new
  hard disks.
* The parted command supports Intel EFI/GPT partition tables. GUID Partition Table (GPT) is a standard for the layout
  of the partition table on a physical hard disk. It is a part of the Extensible Firmware Interface (EFI) standard
  proposed by Intel as a replacement for the outdated PC BIOS, one of the few remaining relics of the original IBM
  PC. EFI uses GPT where BIOS uses a Master Boot Record (MBR).
* Refer [GUID Partition Table Scheme](parted.png): It illustrates the layout of the GUID Partition Table scheme. Each
  logical block (LBA) is 512 bytes in size. LBA addresses that are negative indicate position from the end of the
  volume, with -1 being the last addressable block.

### Common Examples
```shell
sudo parted -l
sudo fdisk -l /dev/sdb
```

### Examples With Details
```shell
sudo parted /dev/sdb            # Initiate the interactive command line menu to perform various tasks on /dev/sdb.
                                # Type 'help' to see all the options. Type the following in (parted) commandline.
mklabel gpt                     # Creates a new GPT disklabel i.e. partition table:
                                # Type 'Yes' to confirm to "Warning: The existing disk label on /dev/sdb will be
                                # destroyed and all data on this disk will be lost. Do you want to continue?"
unit TB                         # Set the default unit to TB.
mkpart primary 0.00TB 4.00TB    # Create a 4TB partition size,
print                           # Print the current partitions.
quit                            # Quit and save the changes.
                                # After quitting, format the filesystem using mkfs and mount it manually using mount
                                # command or automatically using fstab.
```

### Cool Tricks
* None

### TODO
* None
