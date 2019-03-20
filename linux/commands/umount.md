# Description: The umount Command

### Notes
* The umount command unmounts file systems.
* The umount command is used to unmount any mounted filesystem on a system.
* The umount command can be run either by specifying the disk name or the mount point name to unmount currently
  mounted disk.

### Common Examples
```shell
sudo umount /dev/sdb
sudo umount /data
```

### Examples With Details
```shell
sudo umount /dev/sdb    # Any filesystem can be unmounted by specifying the MOUNTED disk name.
sudo umount /data       # Alternatively, any filesystem can be unmounted by specifying the MOUNTED directory or the
                        # mount point.
```

### Cool Tricks
* None

### TODO
* None
