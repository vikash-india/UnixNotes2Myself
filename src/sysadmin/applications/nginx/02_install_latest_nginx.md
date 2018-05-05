# Description: Install Latest Nginx

### Prepare for Install

```bash
# Download key from Nginx web site, and add it to the apt program keyring using the command.
sudo apt-key add nginx_signing.key

# For Ubuntu replace codename with Ubuntu distribution codename, and append the following to the end of the 
# /etc/apt/sources.list file. Example
# deb http://nginx.org/packages/ubuntu/ codename nginx
# deb-src http://nginx.org/packages/ubuntu/ codename nginx

deb http://nginx.org/packages/ubuntu/ quantal nginx
deb-src http://nginx.org/packages/ubuntu/ quantal nginx
```

### Install Nginx
```bash
# Install Nginx
apt-get update
apt-get install nginx
```

### Nginx Logs and Other Files
- Logs are available at the following location
```bash
cat /var/log/nginx/error.log
cat /var/log/nginx/access.log

# Find the locations where nginix related files has been installed
sudo find / -name nginx
```
