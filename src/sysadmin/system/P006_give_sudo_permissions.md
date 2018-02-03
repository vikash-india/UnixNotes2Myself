# Description: Give SUDO permission to an Existing User

### Give sudo Permission Using Group sudo
- Add the user to the secondary group sudo

### (Alternate Method) Give sudo Permission Using visudo
```
# Open the sudoers file
sudo /usr/sbin/visudo

# Enter user privilege specification.
# Duplicate the line for root and modify the permissions. 
# root  ALL=(ALL:ALL) ALL
newuser    ALL=(ALL:ALL) ALL    

# Save and exit the file.
```
