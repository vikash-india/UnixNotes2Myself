# Description: SSH Server Administration on Ubuntu

### Install openssh
```
sudo apt-get install openssh-server
```

### Setup openssh
```
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.backup    # Make a backup of the config file.
sudo gvim /etc/ssh/sshd_config                              # Open config file for editing & modify the following.

PermitRootLogin no                                          # Modify this line to disable root login.

UseDNS no                                                   # Modify this line to disable Reverse DNS Lookup.

AllowUsers dilbert catbert dogbert                          # Add this line to give SSH access to 3 users.

# Save the file and quit

sudo service ssh restart                                    # Restart the ssh server using this command
# OR
sudo /etc/init.d/ssh restart                                # Restart the ssh server using this command
```

### Common SSH Commands
```
sudo service ssh status                                     # Check the server status OR
sudo /etc/init.d/ssh status                                 # Check the server status


sudo service ssh stop                                       # Stop the ssh server OR
sudo /etc/init.d/ssh stop                                   # Stop the ssh server


sudo service ssh start                                      # Start ssh server OR
sudo /etc/init.d/ssh start                                  # Start ssh server
```

### Give SSH Access to a User
1. Simply disabling/locking a user account will not prevent a user from logging into a server remotely if they have
   previously set up RSA public key authentication. They will still be able to gain shell access to the server, without
   the need for any password.
2. Remember to check the users home directory for files that will allow for this type of authenticated SSH access.
   Eg. /home/username/.ssh/authorized_keys.
3. Remove or rename the directory .ssh/ in the user's home folder to prevent further SSH authentication capabilities.
4. Be sure to check for any established SSH connections by the disabled user, as it is possible they may have existing
   inbound or outbound connection giving SSH access to a user. Kill any that are found.
5. Restrict SSH access to only user accounts that should have it. For example, you may create a group called
   'sshlogin' and add the group name as the value associated with the AllowGroups variable located in the file
   /etc/ssh/sshd_config.

```
AllowGroups sshlogin                                        # Restrict SSH login to sshlogin group.

sudo adduser username sshlogin                              # Add the permitted SSH users to the group "sshlogin".
sudo /etc/init.d/ssh restart                                # Restart the SSH service.
```

### Troubleshooting/Debugging SSH Issues
```
sudo service ssh stop                                       # This will not kill existing ssh connections
sudo /usr/sbin/sshd -d                                      # Full path to sshd executable needed. Use 'which sshd'.
# ... debug output follows ...
sudo service ssh start                                      # Restart the SSH server and observe the log.
```

### TODO
* Understand other deployments.
