# Description: The who Command

### Notes
* The who command show who is logged on.

### Common Examples
```shell
who
who -m
```

### Examples With Details
```shell
who             # Show who is logged on.
who -q          # Show the number of users who are logged on.
who -u          # List of users logged in.
who -Hu         # List of users logged in with Column Headers(-H).
who -m          # List hostname and user who is associated with stdin.
who -a          # Equivalent to who -b -d --login -p -r -t -T -u.
who -b          # Show time of last system boot.
```

### Cool Tricks
* None

### TODO
* None
