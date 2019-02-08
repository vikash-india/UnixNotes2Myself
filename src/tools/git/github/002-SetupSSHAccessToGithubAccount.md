# Description: How to Setup SSH Access to GitHub Account

### Generate an SSH key pair.
```
ssh-keygen -t rsa -b 4096 -f github-ssh-key
```

### Add the following entry in ~/.ssh/config file on local machine.
```
Host github.com
    User git
    Port 22
    Hostname github.com
    IdentityFile  ~/relative/path/to/github-ssh-key
    TCPKeepAlive yes
    IdentitiesOnly yes
```

### Add the SSH public key to GitHub Account.
```
1. Sigin to GitHub.
2. Go to Profile - Settings - SSH Keys.
2. Click on Add SSH Key.
3. Enter Title as github-ssh-key.pub.
4. Enter the content of the PUBLIC KEY github-ssh-key.pub to the field Key.
5. Click on Add Key.
```

### Test the GitHub connection
```
ssh -T git@github.com

# The successful test connection will show the a message similar to the one below.
# Hi vikash! You've successfully authenticated, but GitHub does not provide shell access.

# Alternatively, test the ssh connection to GitHub account by specifying the identity file.
ssh -T git@github.com -i path/to/private/key
```

### Note
* None
