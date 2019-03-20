# Description: The unalias Command

### Notes
* The unalias command removes entries from the current user's list of aliases.
* The unalias command removes aliases created during the current login session. It also suppresses permanent aliases,
  however, they are affected only for the current login session and are restored after the user logs in again.

### Common Examples
```shell
unalias x
```

### Examples With Details
```shell
unalias x       # Remove the alias x if the user had any alias named x.
unalias x y z   # Remove aliases x, y and z. Any number of alias names can be given on a single line.
unalias -a      # Use -a to remove all aliases for the current user for the current shell for the current session.
```

### Cool Trick
* None

### TODO
* None
