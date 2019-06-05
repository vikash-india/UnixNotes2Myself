# Description: The htop Command

### Notes
* The htop is an interactive process viewer.
* Tasks related to processes (killing, renicing) can be done without entering their PIDs.

### Common Examples
```shell
htop
```

### Examples With Details
```shell
htop -d 300         # Use -d or --delay=DELAY to specify delay between updates, in tenths of seconds. 300 is 30 seconds.
htop -p 16374,1     # Use -p --pid=PID,PID... to show only the given PIDs.
htop -u vikash      # Use -u --user=USERNAME to show only the processes of a given user.
```

### Cool Tricks
* None

### TODO
* Check man pages for interactive commands.
