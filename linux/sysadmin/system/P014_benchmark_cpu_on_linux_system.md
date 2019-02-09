# Description: Benchmark CPU on a Linux System

### Install Tools
```
sudo apt-get install sysbench
sudo apt-get install stress
```

### Benchmark Multiple CPU Threads Using Prime Number Calculation Test
1. Specify the range for the prime number calculation test using the option --cpu-max-prime=99999  
2. Specify the number of cores using the option --num-threads=4

```bash
sysbench --test=cpu --num-threads=4 --cpu-max-prime=99999 run
```

### Benchmark Single CPU Thread Using Integer Calculation Performance Test
1. This is simple one-line command test.

```bash
time $(i=0; while (( i < 9999999 )); do (( i ++ )); done)
```

### Benchmark Single CPU Thread Using MD5 Hash Computation
1. The /dev/urandom is a special device file which returns random junk characters endlessly. 
2. Use it to compute MD5 hash and stress the CPU. 
3. Use ctrl-C to stop

```bash
time md5sum /dev/urandom
```

### Benchmark Multiple CPU using the stress command
1. This command puts a multi threaded load on the CPU for 5 minutes.
2. Specify the number of cores using the option --cpu 4.
3. Specify the duration for the stress test using the option --timeout 300s.

```bash
time stress --cpu 4 --timeout 300s
```

### TODO
* Read about `photonix-test-suite` which benchmarks several real world CPU-heavy use cases like compression, encryption 
  and databases.
