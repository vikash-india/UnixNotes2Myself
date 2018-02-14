# Description: SFTP Server Administration on Ubuntu

### Notes
- SFTP stands for SSH File Transfer Protocol. It's a secure way of transferring files to a server using an encrypted SSH 
  connection. Despite the name, it's a completely different protocol than FTP (File Transfer Protocol), though it's 
  widely supported by modern FTP clients.
- SFTP is available by default with no additional configuration on all servers that have SSH access enabled. It's secure 
  and easy to use, but comes with a disadvantage: in a standard configuration, the SSH server grants file transfer 
  access and terminal shell access to all users with an account on the system.
- In some cases, one might want only certain users to be allowed file transfers and no SSH access. Let's setup the SSH 
  daemon to limit SFTP access to one directory with no SSH access allowed on per user basis.

### Prerequisites
- Ubuntu 14.04 or Ubuntu 16.04 Server
- Open SSH Server Setup

### Step 1 - Create a New User 'Dilbert'
```
# Create user 'dilbert'
sudo adduser dilbert

# You'll be prompted to create a password for the account, followed by some information about the user. The user 
  information is optional, so you can press ENTER to leave those fields blank.
```

### Step 2 - Create a Directory for File Transfers
- In order to restrict SFTP access to one directory, make sure the directory complies with the SSH server's permissions 
  requirements, which are very particular. Specifically, the directory itself and all directories above it in the 
  filesystem tree must be owned by root and not writable by anyone else. Consequently, it's not possible to simply give 
  restricted access to a user's home directory because home directories are owned by the user, not root.
- Note: Some versions of OpenSSH do not have such strict requirements for the directory structure and ownership, but 
  most modern Linux distributions (including Ubuntu 14.04 and Ubuntu 16.04) do.
- There are a number of ways to work around this ownership issue. We'll create and use /var/sftp/uploads as the target 
  upload directory. The `/var/sftp` will be owned by root and will be unwritable by other users; the subdirectory 
  `/var/sftp/uploads` will be owned by dilbert, so that user will be able to upload files to it.
  
```bash
# Create Directory Tree
sudo mkdir -p /var/sftp/uploads

# Set File Permissions
sudo chmod 755 /var/sftp

# Set Root Ownership for Parent Directory
sudo chown root:root /var/sftp

# Set User Ownership for SFTP Directory
sudo chown dilbert:dilbert /var/sftp/uploads
```

### Step 3 - Restrict Access to One Directory
```bash
# Open the SSH server configuration file
sudo vim /etc/ssh/sshd_config

# Append the following configuration snippet at the end
# Begin - Added for SFTP
Match User dilbert
ForceCommand internal-sftp
PasswordAuthentication yes
ChrootDirectory /var/sftp
PermitTunnel no
AllowAgentForwarding no
AllowTcpForwarding no
X11Forwarding no
# End - Added for SFTP

# Restart SSH Server
sudo systemctl restart sshd
```
#### Note
- Match User tells the SSH server to apply the following commands only to the user specified. Here, we specify dilbert.
- ForceCommand internal-sftp forces the SSH server to run the SFTP server upon login, disallowing shell access.
- PasswordAuthentication yes allows password authentication ONLY for this user.
- ChrootDirectory /var/sftp/ ensures the user will not be allowed access to anything beyond the /var/sftp directory. 
- AllowAgentForwarding no, AllowTcpForwarding no and X11Forwarding no disables port forwarding, tunneling and X11 
  forwarding for this user.

### Step 4 - Test the Connection
- Replace localhost with machine name or IP where SFTP server is running.
 
```bash
# Verify SSH Access is Disabled
ssh dilbert@localhost
Could not chdir to home directory /home/dilbert: No such file or directory
This service allows sftp connections only.
Connection to grebe closed.

# Verify SSH Access is Disabled
sftp dilbert@localhost

# Connected to localhost.
# sftp>

# Verify Switching to Parent Directory is Disabled
# This command will not give an error, but listing the directory contents as before will show no change, proving that 
# the user was not able to switch to the parent directory.
cd ..

# Now use FTP commands like ls, cd, put for remote machine while !ls, !cd for local machine.
```

### TODO
* None
