# Description: Wine Administration on Ubuntu

### Install wine on Ubuntu 16.04
```
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install wine1.7 winetricks"
```

### Install wine on Ubuntu 18.04
```
sudo apt-get install wine64 winetricks"

# Add 32bit architecture support on your distro to install 32-Bit application
sudo dpkg --add-architecture i386

# Install Windows Program
wine /path/to/setup.exe
```
