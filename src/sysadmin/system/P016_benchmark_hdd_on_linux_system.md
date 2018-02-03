# Description: Benchmark HDD on a Linux System

### Install Tools
```
sudo apt install pipebench
```

### Benchmark HDD Raw Read Speed
1. Hard drive I/O performance have a great impact on Linux system performance and user experience. In most cases, hard 
   drive I/O speed is more important than CPU and RAM speed.
2. A very simple raw hard drive read speed could be benchmarked using cat and pipebench.
3. Use `sudo fdisk -l` to get the exact partition to be used with cat command.
4. This command requires sudo permissions.
5. Press Ctrl+C to stop the benchmarking if the content of /dev/sda3 is more.

```bash
sudo cat /dev/sda3 | pipebench -q > /dev/null
```

### Benchmark HDD File Write Speed Using the `dd` Command
1. This will create a file `test_data` of size 1.6 GB containing only zeros, in the present directory and output an 
   overview of HDD write speed.
```bash
dd bs=16k count=102400 oflag=direct if=/dev/zero of=test_data
```

### Benchmark HDD File Read Speed Using `dd` Command
1. This command will read the `test_data` file created in the above step and dump the data to /dev/null.

```bash
dd bs=16K count=102400 iflag=direct if=test_data of=/dev/null
```

### Benchmark Direct Drive Read Speed Using the `hdparm` Command
1. This test returns timing buffered disk read speed and this result could be assumed as the fastest disk read speed.

```bash
sudo hdparm -t /dev/sda
```

### TODO
* None
