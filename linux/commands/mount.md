# Description: The mount Command

### Notes
* The mount command mounts a filesystem.
* Mount is to access a filesystem in Linux.
* Mount Point: A filesystem can be mounted on any directory and the content can be accessed just like any normal
  directory. Such directories are called mount points.
* When mounting a filesystem it does not matter if the filesystem is a hard disk partition, CD-ROM, floppy, or USB
  storage device. One needs to know the device name associated with the particular storage device and the mount
  point or the mount directory.
* The directory or the mount point should exist with proper file permissions before it can be mounted.
* Any filesystems that are not mounted can be seen via the df command.

### Common Examples
```shell
sudo mkdir /data
sudo chown -R dilbert:dilbert /data
sudo mount -t ext4 /dev/sdb /data
```

### Examples With Details
```shell
sudo mount                          # Display the currently mounted filesystems.
sudo mount /dev/sdb /data           # Mount the disk /dev/sdb to the directory/mount point on /data. Create directory
                                    # before running this command and set appropriate permissions.
sudo mount -t vfat /dev/sdc1 /win   # Use the -t option to specify the filesystem type that should be used for mounting.
                                    # If the -t option is left out of the command, mount will attempt to determine the
                                    # correct filesystem type it should mount the device with.
sudo mount -t ext4 /dev/sdb /data   # Though the mount command automatically detects the file system on disk but file
                                    # system type will have to be specified for certain cases.
```

### Cool Tricks
* None

### TODO
* None
