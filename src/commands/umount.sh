# Description: umount - unmount file systems

# Notes
# 1. The umount command is used to unmount any mounted filesystem on a system.
# 2. The umount command can be run either by specifying the disk name or the mount point name to unmount currently
#    mounted disk.

# Common Examples
sudo umount /dev/sdb
sudo umount /data

# Examples with details
sudo umount /dev/sdb    # Any filesystem can be unmounted by specifying the MOUNTED disk name.
sudo umount /data       # Alternatively, any filesystem can be unmounted by specifying the MOUNTED directory or the
                        # mount point.

# Cool Tricks
# None

# TODO
# None
