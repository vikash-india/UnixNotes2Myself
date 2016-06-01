# Description: WriteHere Administration on Ubuntu

### Install Adobe Air
```
# Install i386 libraries, that are required for successful installation and running of Adobe Air and air applications.
sudo apt-get install libxt6:i386 libnspr4-0d:i386 libgtk2.0-0:i386 libstdc++6:i386 libnss3-1d:i386 lib32nss-mdns libxml2:i386 libxslt1.1:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386

# Install libgnome-keyring0:i386 package.
sudo apt-get install libgnome-keyring0:i386

# Create symlinks to gnome-keyring so Adobe Air could see it.
sudo ln -s /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
sudo ln -s /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0

# Download Adobe Air installer from the site

# Give execute permission and then run that .bin file.
sudo chmod +x AdobeAIRInstaller.bin
sudo ./AdobeAIRInstaller.bin

# Now run other .air application
```

### TODO
* None
