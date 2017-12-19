# Description: mount - mount a filesystem

# Notes
# 1. Mount is to access a filesystem in Linux.
# 2. Mount Point: A filesystem can be mounted on any directory and the content can be accessed just liek any normal
#    directory. Such directories are called mount points.

# Common Examples
sudo mkdir /data
sudo chown -R dilbert:dilbert /data
sudo mount -t ext4 /dev/sdb /data

# Examples with details
sudo mount /dev/sdb /data           # Mount the disk /dev/sdb to the directory/mount point on /data. Create directory
                                    # before running this command and set appropriate permissions.
sudo mount -t ext4 /dev/sdb /data   # Though the mount command automatically detects the file system on disk but file
                                    # system type will have to be specified for certain cases.

# Cool Tricks
# None

# TODO
# None
