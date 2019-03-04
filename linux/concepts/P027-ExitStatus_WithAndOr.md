# Description: Use of && and || With Exit Status

### And (&&) 
* If the first AND expression SUCCEEDS then execution goes to the next expression or else it does not.
```
# The `cp` command will execute only if `mkdir` succeeds.
mkdir /tmp/backup && cp test.txt /tmp/backup

# Check reachability
ping -c 1 google.com && echo "Google reachable"
```

### OR (||)
* If the first OR expression FAILS then execution goes to the next expression or else it does not.
```
# The second `cp` command will execute only if first `cp` fails.
cp test.txt /tmp/backup || cp test.txt /tmp

# Check unreachability
ping -c 1 google.com || echo "Google UNREACHABLE"
```

### TODO
* None
