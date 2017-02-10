# Description: Skype Administration on Ubuntu


### Install Skype
- Get the sky binary
```
wget download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
```
- Install using gdebi package manager
```
sudo gdebi skype-ubuntu-precise_4.3.0.37-1_i386.deb
```

### Note
- This had to be installed using gdebi because the latest skype release is not made available for Ubuntu 14.04
  and it has dependency on other libraries.
