# Description: Google Music Manager Administration on Ubuntu

### Install Google Music Manager
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
