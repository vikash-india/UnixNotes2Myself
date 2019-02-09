# Description: Samba Administration on Ubuntu

### Install Samba
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
sudo smbpasswd -a <username>

# Restart the service
sudo service smbd restart

# Test the service from Unix Command Line
# Syntax: smbclient //hostname/aservice -U=[username] where aservice is username if homedirectory exists
smbclient //mars/dilbert -U=dilbert

# Finally access the share from a remote Windows machine
\\mars\share
# Enter username and password
```

### Give Write Permission on a Share to a Team/Group
```bash
# Create a user and then add an existing user to a secondary group (-G)
usermod -G hr catbert

# Add the following entry to smb.conf
[sharename]
path = /path/to/share
writeable = yes
browseable = yes
public = yes
create mask = 0644
directory mask = 0755
# force user = shareuser
valid users = catbert

# Restart samba server
```

### TODO
* Windows users should enter \\mars\dilbert on Run prompt. Enter WORKGROUP\dilbert and password when prompted for password.
