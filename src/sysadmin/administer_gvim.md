# Description: Gvim Administration on Ubuntu

### Install Gvim
```
sudo apt-get install vim-gtk
OR
sudo apt-get install vim-gnome
```
* Note: Use any of the above commands to install gvim.

### Configure Gvim
- Set Gvim as the default text editor

```
touch ~/.local/share/applications/defaults.list
gvim ~/.local/share/applications/defaults.list

# Add the following lines to the file, save and exit.
[Default Applications]
text/plain=gvim.desktop
```

- Create Desktop Entry to get gvim shortcut in Dash

```
# Make sure the file ~/.local/share/applications/gvim.desktop exists
touch ~/.local/share/applications/gvim.desktop
gvim ~/.local/share/applications/gvim.desktop

# Add the following entry
[Desktop Entry]
Categories=Utility;TextEditor;
Comment=Edit text files
Encoding=UTF-8
Version=1.0
Type=Application
Name=Gvim Text Editor
Icon=gvim.png
Path=/home/vikash
Exec=gvim %f
StartupNotify=true
StartupWMClass=Gvim
MimeType=text/plain;

# Save and exit
```
