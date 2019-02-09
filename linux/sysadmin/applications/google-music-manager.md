# Description: Google Music Manager Administration on Ubuntu

### Install Google Music Manager on Ubuntu 16.04
- Add the Google Music repository for Ubuntu
```
sudo sh -c 'echo ""deb http://dl.google.com/linux/musicmanager/deb/ stable main"" >> /etc/apt/sources.list.d/google-musicmanager.list'
```
- Get the key
```
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
```
- Update package lists on your system
```
sudo apt-get update
```
- Install the google music application
```
sudo apt-get install google-musicmanager-beta"
```

### Install Google Music Manager on Ubuntu 18.04
- Login to Google Play Music in Chrome
- Download .deb Google Music Manager file.
- Install .deb file.
- Open Google Music Manager and Configure.
