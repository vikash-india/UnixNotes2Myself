# Description: Wipe Hard Disk on Ubuntu

### Fill the Partition /dev/sdb1 with Zeros Using dd Command
- Total time to wipe the disk will depend upon the write speed.
    - 33 Minutes for wiping 100 GB  at a write speed of 50 MB per second.
    - 5 Hours 30 Minutes for wiping 1 TB  at a write speed of 50 MB per second.
- If possible, run this command for the entire disk /dev/sdb instead of one partition /dev/sdb1.
- The write speed can be increased by specifying a bigger block size.
```
# Default command
dd if=/dev/zero of=/dev/sdb1

# Specify a block size for a better write speed
dd if=/dev/zero of=/dev/sdd1 bs=4M

# Progress
# 1. The above commands will not return any progress or feedback.
# 2. Execute the following command from a second shell as root.
# 3. The USR1 signal is interpreted by the dd command as an instruction to print its progress.
kill -USR1 `pidof dd`
```

### TODO
* None
