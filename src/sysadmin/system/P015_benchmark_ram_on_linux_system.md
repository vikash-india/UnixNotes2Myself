# Description: Benchmark RAM on a Linux System

### Install Tools
```
None
```

### Benchmark RAM Speed
1. There is no direct method to benchmark a RAM and generally RAM speed denotes RAM clock speed. It is unnecessary to do 
   such testing but this may be considered as an experiment.
2. The tmpfs is a RAM based super fast file system, something like a ramdisk, so by doing a read write speed test on a 
   tmpfs mounted folder will give a rough idea about the RAM speed. 
3. This should give incredible result. Run this test on system with 1600 MHz DDR3L RAM or with a 2100 MHz DDR4 RAM and 
   compare the result.

```bash
# Create a directory
mkdir ram_test

# Mount the directory using a tmpfs filesystem
sudo mount tmpfs -t tmpfs ram_test/

cd ram_test

# Write to the file data_tmp in the directory ram_test
dd if=/dev/zero of=data_tmp bs=1M count=512  # write to RAM test

# Read from the file data_tmp in the directory ram_test 
dd if=data_tmp of=/dev/null bs=1M count=512  
```

### TODO
* None
