# Description: Google Chrome Administration on Ubuntu

### Install Google Chrome via PPA
- Download and install the signing key from Google Linux repository.
```
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
```
- Add google chrome repository.
```
sudo sh -c 'echo ""deb http://dl.google.com/linux/chrome/deb/ stable main"" >> /etc/apt/sources.list.d/google-chrome.list'
```
- Update your repository and install Google Chrome web browser.
```
sudo apt-get update
sudo apt-get install google-chrome-stable
```
