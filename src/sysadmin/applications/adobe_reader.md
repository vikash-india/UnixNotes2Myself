# Description: Adobe Acrobat Reader Administration on Ubuntu

### Install Adobe Acrobat Reader
- Get the Debian binary
```
wget ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb
```
- Install gdebi
```
sudo apt-get install gdebi
```
- Install Adobe Acrobat Reader
```
sudo gdebi AdbeRdr9.5.5-1_i386linux_enu.deb
```
- Install missing libraries
```
sudo apt-get install libgtk2.0-0:i386 libnss3-1d:i386 libnspr4-0d:i386 lib32nss-mdns libxml2:i386 libxslt1.1:i386 libstdc++6:i386
```

### Configure Adobe Acrobat Reader
-  Create Desktop Entry if Adobe Reader does not appear in Dash.
    ```
    gvim ~/.local/share/applications/acroread.desktop

    # Add the following contents to the file.
    [Desktop Entry]
    Categories=Utility;PDF Viewer;
    Comment=View PDF files
    Encoding=UTF-8
    Version=1.0
    Type=Application
    Name=Adobe PDF Reader
    Icon=/opt/Adobe/Reader9/Resource/Icons/48x48/AdobeReader9.png
    Path=/home/vikash
    Exec=/opt/Adobe/Reader9/bin/acroread %f
    StartupNotify=true
    MimeType=application/pdf

    # Save and exit
    ```

### Uninstall Adobe Acrobat Reader and Libraries
- Uninstall using the following command
```
sudo apt-get remove AdbeRdr9 libgtk2.0 libnss3-1d libnspr4-0d lib32nss-mdns libxml2 libxslt1.1 libstdc++6
```
