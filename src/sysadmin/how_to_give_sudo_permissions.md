# Description: Give SUDO permission to an Existing User

### 1. Open the sudo file using the command.
```
sudo /usr/sbin/visudo
```

### 2. Enter user privilege specification.
```
newuser    ALL=(ALL:ALL) ALL    # Duplicate the line for root and modify. Same as root  ALL=(ALL:ALL) ALL
```

### 3. Save and exit the file.
