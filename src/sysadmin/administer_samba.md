# Description: Samba Administration on Ubuntu

### Install WriteHere
```
sudo apt-get update
sudo apt-get install samba
```

### Add a NEW Samba user
```
# Add a new user to Samba
sudo vim /etc/samba/smb.conf
# Add the username to the valid_user list, save the file and exit.

# Set Samba Password
smbpasswd -a <username>

# Restart the service
sudo service smb restart

# Test the service from Unix Command Line
# Syntax: smbclient //hostname/aservice -U=[username] where aservice is username if homedirectory exists
smbclient //mars/dilbert -U=dilbert

# Finally access the share from a remote Windows machine
\\mars\share
# Enter username and password
```

### TODO
* Windows users should enter \\mars\dilbert on Run prompt. Enter WORKGROUP\dilbert and password when prompted for password.
