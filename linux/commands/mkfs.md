# Description: The mkfs Command

### Notes
* The mkfs command builds a Linux filesystem.

### Common Examples
```shell
sudo mkfs.ext4 /dev/sdb1
```

### Examples with details
```shell
mkfs.ext4 /dev/sdb1    # After creating new partition, don't forget to format the partition by using mkfs command.
                       # This can be done by running one of following command in the terminal.
mkfs -t ext4 /dev/sdb1 # you can run the following command in terminal
```

### Cool Tricks
* None

### TODO
* None
