# Description: Groups Management on Ubuntu

### View all Current groups
```
groupmod TAB TAB TAB    # Type groupmod and hit TAB key 3 times
```

### View the List of Groups for a User
```
groups                  # List groups for self/logged in user.
groups username         # List groups for username.
sudo groups username    # Sudo permission might be required.

id                      # List groups for self/logged in user.
id username             # List group info for the username.
sudo id username        # Sudo permission might be required.
```

### Adding and Deleting a Group
```
sudo addgroup groupname     # Add a group
sudo delgroup groupname     # Delete a group
```

### Add an Existing User to an Existing Group
```
sudo adduser USERNAME GROUPNAME
```

### Add the User ‘dilbert’ to sudo Group
```
sudo adduser dilbert sudo
```
