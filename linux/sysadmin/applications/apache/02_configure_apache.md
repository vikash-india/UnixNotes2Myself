# Description: Configure Apache2

### Enable Custom HTTP Configuration
- Create a custom http conf and place it on some path, say /etc/apache2/sites-available/my.conf

```bash
# Remove default conf file /etc/apache2/sites-enabled/000-default.conf
sudo rm /etc/apache2/sites-enabled/000-default.conf

# Enable my.conf file
sudo a2ensite my
```

### Enable Modules
```bash
# Proxy Modules 
sudo a2enmod proxy
sudo a2enmod proxy_http

# Reqrite Modules
sudo a2enmod rewrite
```

### Restart Apache2
```bash
Restart Apache2
sudo service apache2 restart
```

### Test Apache
- Open browser and visit `http://your_server_IP_address`
