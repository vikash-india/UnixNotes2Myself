# Description: Atop Output

### Atop Output for the Flag -c
* usr%: Percentage of cpu-time consumed in user mode (program text) for all active processes running with a nice value 
  of zero (default) or a negative nice value (which means a higher priority than usual). The cpu consumption in user 
  mode of processes with a nice value larger than zero (lower priority) is indicated in the nice%-column.
* nice%: Percentage of cpu time consumed in user mode (i.e. program text) for all processes running witn a nice value 
  larger than zero (which means with a lower priority than average).
* sys%: Percentage of cpu time consumed in system mode (kernel text) for all active processes. A high percentage usually 
  indicates a lot of system calls being issued.
* irq%: Percentage of cpu time consumed for handling of device interrupts.
* softirq%: Percentage of cpu time consumed for soft interrupt handling.
* steal%: Percentage of cpu time stolen by other virtual machines running on the same hardware.
* guest%: Percentage of cpu time used by other virtual machines running on the same hardware (overlaps with usr%/nice%).
* wait%: Percentage of unused cpu time while at least one of the processes in wait-state awaits completion of disk I/O.
* idle%: Percentage of unused cpu time because all processes are in a wait-state but not waiting for disk-I/O.

### TODO
* Check this URL: https://www.systutorials.com/docs/linux/man/1-atopsar/#lbAE.
