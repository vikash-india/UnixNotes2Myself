# Description: Samba Server Administration on Raspbian

### Install Samba Server
```bash
# Install Samba Server
sudo apt-get install samba samba-common-bin
```

### Configure Samba Server
```bash
# Edit configuration file
sudo vim /etc/samba/smb.conf

# Confirm the following properties

# The workgroup name can be any alphanumerical name and should match the workgroup one would like to join. The default 
# workgroup in Windows 7 is WORKGROUP.
workgroup = WORKGROUP
wins support = yes

# Add the following at the end of the file
# Note
# 1. Use the property public=no to force the user to login with a valid user (pi) before accessing the shared folders.
# 2. The share name is \\[Hostname]\ShareName
[ShareName]
comment=Home Server
path=/home/path/to/directory
browseable=Yes
writeable=Yes
only guest=no
create mask=0777
directory mask=0777
public=no

# Save the file and exit.
```

### Create a Samba Password
```bash
sudo smbpasswd -a pi
```

### Restart the Samba Service
```bash
sudo service smbd restart
```

### Access Share from Ubuntu
```bash
# Option 1 
Use Nautilus → Main Menu Button (on the Panel) → Connect to Server. 
Type smb: in the location bar of Nautilus to view all the workgroups.

# Option 2
smb://[Hostname]/[ShareName]/
```

### Access Share from Windows
```bash
# TODO
```

### TODO
- None
