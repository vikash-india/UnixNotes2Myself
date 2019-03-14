# Description: The atopsar Command

### Notes
* The command `atopsar` is a symlink to the command `atop` and will be added automatically during `atop` installation.
* The command `atopsar` can be used to report statistics on system level.
* Colors and (on request) markers are used by atopsar to highlight that the utilization of a resource is critical
  (red) or almost critical (cyan).

### Common Examples
```shell
atopsar -A
```

### Examples with details
```shell
atopsar -A                      # Use the flag -A to return all available reports.
atopsar -A -b 11:00 -e 11:15    # Limit the report to a specific time window using beginning -b and end -e flags reading
                                # today's raw file.
atopsar -c 30 5                 # Generate a report for current CPU utilization for 5 minutes (ten times with intervals
                                # of 30 seconds).
```

### Cool Tricks
* None

### TODO
* None
