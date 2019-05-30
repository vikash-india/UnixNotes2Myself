# Description: The chpasswd Command

### Notes
* The chpasswd command is used to update passwords in batch mode.
* Difference between passwd and chpasswd commands
    - The passwd command checks if the STDIN (file descriptor 0) is attached to the terminal, using isatty(0). If not, 
      passwd would bail out ie it only works interactively.
    - The chpasswd command, on the other hand, is designed to read (username and) password from STDIN, and is called the 
      batch mode (creates/updates multiple user credentials at once). It reads password(s) (in clear text by default), 
      and username(s) from STDIN, given in the format user_name:password, with newline separating the entries.

### Common Examples
```shell
echo 'userid:newpasswd' | sudo chpasswd
```

### Examples With Details
#### Change One User's Password
```shell
# Changes password without any interaction
echo 'userid:newpasswd' | sudo chpasswd
```

#### Change Multiple Users' Passwords
```shell
sudo chpasswd
user1:user1_password
user2:user2_password
user3:user3_password
```

#### Change Multiple Users' Passwords
```shell
# The content of file.txt
user1:user1_password
user2:user2_password
user3:user3_password

sudo chpasswd < /path/to/file.txt
```

#### Change One User's Password on a Remote Server
```shell
ssh -t servername "echo 'dilbert:123456' | sudo chpasswd"
```

### Cool Tricks
* None

### TODO
* Explore how to specify encryption algorithms.
