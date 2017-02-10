# Description: fdisk - manipulate disk partition table

# Notes
# 1. Hard disks can be divided into one or more logical disks called partitions. This division is described in the
#    partition table found in sector 0 of the disk.
# 2. The fdisk is a text based utility program to accomplish the following
#       - View existing partitions.
#       - Create a new partition.
#       - Delete an existing partition
#       - Change an existing partition.
# 3. The fdisk tool understands DOS type partition tables and BSD or SUN type disklabels.
# 4. The fdisk command is root user command and hence always switch to "root" or "superuser" user using 'sudo su -'.
# 5. The fdisk command does not create GPT partition tables. The GPT fdisk (gdisk, cgdisk, sgdisk, and fixparts
#    programs) is a set of text-mode partitioning tools for Linux, FreeBSD, Mac OS X, and Windows.
# 6. IMPORTANT: The fdisk command cannot create partitions larger than 2 TB. Use GNU parted command for such cases.

# Common Examples
sudo fdisk -l
sudo fdisk /dev/sda

# Examples with details
fdisk -l            # Use -l option to list or view all existing disk partitions. The partitions shown are ordered by
                    # device label as /dev/sda, /dev/sdb or /dev/sdc etc.
fdisk -l /dev/sda   # View partitions of specific a hard disk.
fdisk -s /dev/sda   # Use the '-s' option to get the size of particular hard disk.

fdisk /dev/sda      # Initiate the interactive command line menu to perform various tasks on /dev/sda hard disk.
                    # - Use 'm' to see the various options which are available for fdisk command.
                    # - Use 'p' to view partition table for specific hard disk.
                    # - Use 'd' to delete disk partition of specific hard disk. This will prompt for the partition
                    #   number that should be deleted from your /dev/sda hard disk. Entering a number, say '4' will
                    #   delete partition number 4 or /dev/sda4 from the /dev/sda hard disk and show as free space in
                    #   partition table.
                    # - Use 'w' to make changes in disk and exit from command mode of fdisk command. Please note that
                    #   new changes will takes place ONLY after system reboot. Till then old partition will be in use.
                    # - Use 'n' to create new partition with specific size. After creating new partition, don't forget
                    #   to format the partition by using mkfs command.
                    # - Use 'q' to quit without saving changes.
                    # - Use 'x' for extra functionality (experts only) and then 'm' to view all sub options. The 'f'
                    #   command can be used to fix the order of partition table.
                    # After quitting, format the filesystem using mkfs and mount it manually using mount command or
                    # automatically using fstab.

# Cool Tricks
# None

# TODO
# 1. None
