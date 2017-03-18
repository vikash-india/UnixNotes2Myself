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
[Sharename]
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
# Option 1: Using Nautilus 
# 1. Use Nautilus → Main Menu Button (on the Panel) → Connect to Server. 
# 2. Type smb: in the location bar of Nautilus to view all the workgroups.

# Option 2: Using Nautilus
smb://[Hostname]/[Sharename]/

# Option 3: Using Commandline
smbclient //<hostname>/<sharename> -U <username>
```

### Access Share from Windows
```bash
# TODO
```

### Mount the Share on Ubuntu
- Sometimes it is useful to mount a Samba share to a directory so the files in the directory can be treated as if they 
  are part of the local file system.
```bash
# Create the directory if it does not exist
mkdir /mnt/point/

# Mount the Samba share
mount -t  smbfs -o username=<username> //<servername>/<sharename> /mnt/point/
```

### TODO
- None
