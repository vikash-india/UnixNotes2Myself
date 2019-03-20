# Description: The time Command

### Notes
* The time command run programs and summarize system resource usage.

### Common Examples
```shell
```

### Examples With Details
```shell
time echo "scale=5000; 4*a(1)" | bc -l -q   # Time to compute PI to 5000 places of decimal.
```

### Cool Tricks
* A very simple and useful stopwatch. Use CTRL-d to stop.
```shell
time read
```

### TODO
* Explore man pages of this commands.
