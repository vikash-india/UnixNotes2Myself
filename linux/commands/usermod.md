# Description: The usermod Command

### Notes
* The usermod command modifies a user account.
* The -G flag will add the user to all the Secondary groups listed after -G. This in effect can remove the user from
  all those existing secondary groups of which the user is a part of but not listed after -G flag.

### Common Examples
```shell
usermod -G dev calvin
```

### Examples With Details
```shell
usermod -G dev calvin           # Add the user calvin to SECONDARY group dev
usermod -g dev calvin           # Add the user calvin to PRIMARY group dev
usermod -G dev,sales calvin     # Add user calvin to sales but also keep his existing membership of dev.
```

### Cool Tricks
* None

### TODO
* None
