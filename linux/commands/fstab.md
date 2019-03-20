# Description: The fstab Command

### Notes
* The fstab command sets static information about the filesystems.
* The /etc/fstab file stores static information about the filesystems.
* If a disk has to be mounted on system boot so that partitions will be available automatically, an appropriate
  entry should be created in the /etc/fstab.

### Common Examples
```shell
```

### Examples With Details
# Example 1: Add the following entries in /etc/fstab
```shell
sudo gvim /etc/fstab
/dev/sdb  /data              ext4    defaults        0 0

mount -a    # Run mount -a command to immediate mount all disk defined in /etc/fstab file without restarting.
```

### Cool Tricks
* None

### TODO
* None
