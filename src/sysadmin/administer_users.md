# Description: User Management on Ubuntu

### Add a User
```
sudo adduser username # Enter other details when prompted.
```

### Delete a User and its Primary Group
```
sudo deluser username

# Note
# 1. Deleting a user does not remove their respective home folder. Delete the folder manually or keep it according
#    to desired retention policies.
# 2. Any user added later on with the same UID/GID as the previous owner will get access to this folder if necessary
#    precautions are not taken. A simple solution is to change ownership and locations of the home directory.
sudo chown -R root:root /home/username/
sudo mkdir /home/archived_users/
sudo mv /home/username /home/archived_users/
```

### Locking & Unlocking a User
```
sudo passwd -l username     # Lock the user
sudo passwd -u username     # Unlock the user
```

### User Profile Security
1. When a new user is created, the adduser utility creates a brand new home directory named /home/username.
2. The default profile is modeled after the contents found in the directory of /etc/skel, which includes all
   profile basics.
3. If a server will be home to multiple users, close attention should be paid to the user home directory
   permissions to ensure confidentiality. By default, user home directories in Ubuntu are created with world
   read/execute permissions. Modify those permissions accordingly.
4. Some people tend to use the recursive option (-R) indiscriminately which modifies all child folders and files,
   but this is not necessary, and may yield other undesirable results. The parent directory alone is sufficient
   for preventing unauthorized access to anything below the parent.
5. A much more efficient approach to the matter would be to modify the adduser global default permissions when
   creating user home folders. Simply edit the file /etc/adduser.conf and modify the DIR_MODE variable to something
   appropriate, so that all new home directories will receive the correct permissions.

```
ls -ld /home/username           # Verify the current user home directory permissions.
sudo chmod 0750 /home/username  # Remove Read + Execute permission for others/world for a home directory.

DIR_MODE=0750                   # Modify adduser global default permissions
```
