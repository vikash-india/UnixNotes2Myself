# Description: Plex Media Server Administration on Ubuntu

### Install Plex Media Server
```
# Enable the Plex Media Server repository on Ubuntu
sudo echo deb https://downloads.plex.tv/repo/deb/ public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
sudo curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -

# Install Plex Media Server
sudo apt-get update
sudo apt-get install plexmediaserver

# To avoid any annoying permission problems, change plex to run under the Pi user. To do this open the following file.
sudo vim /etc/default/plexmediaserver
PLEX_MEDIA_SERVER_USER=[current_user_name]
```

### Configure Plex Media Server
1. Visit [http://localhost:32400/web](http://localhost:32400/web) from a browser.
2. Follow on-screen wizard to set up.

### Configure Plex Media Server
```bash
sudo service plexmediaserver stop
sudo service plexmediaserver start
sudo service plexmediaserver restart
```

### Common Troubleshooting
1. Make sure that the directory has proper permissions for plex media server to read and write.

### TODO
* None
