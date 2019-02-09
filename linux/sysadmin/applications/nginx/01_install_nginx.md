# Description: Install Nginx

### Install Nginx
```bash
# Install (Default) Nginx that comes with Debian/Ubuntu package manager.
sudo apt-get install nginx
```

### Configure Nginx
```bash
# Start Nginx if it is not started on its own after installation. 
sudo service nginx status
sudo service nginx start

# Add nginx to startup to ensure that it restarts after every reboot.
# Note: Message "System start/stop links for /etc/init.d/nginx already exist." shows up if it is already added.
update-rc.d nginx defaults
```
