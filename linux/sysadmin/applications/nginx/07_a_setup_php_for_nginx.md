# Description: Install and Setup PHP7.0 on Nginx

### Prerequisites
- Nginx with a configured virtual host setup for a.example.com, with its conf file as a.example.conf

### Install PHP7.0
```bash
# Install PHP
sudo apt-get install php7.0-fpm

# Install Imagemagic
sudo apt-get install imagemagick

# Install PHP7.0 extensions
sudo apt-get install php-imagick    # Imagemagic extension 
sudo apt-get install php7.0-gd      # For Image
sudo apt-get install php7.0-mysql   # MySQL extension
```

### Configure the PHP Processor
- The variable cgi.fix_pathinfo is an extremely insecure setting because it tells PHP to attempt to execute the closest 
  file it can find if the requested PHP file cannot be found. This needs to be modified. 
```bash
sudo vim /etc/php/7.0/fpm/php.ini

# Uncomment the line containing cgi.fix_pathinfo, change the value to 0, save and quit the file.
cgi.fix_pathinfo=0

# Restart our PHP processor by typing
sudo systemctl restart php7.0-fpm
```

### Configure Nginx to Use the PHP Processor
1. First, we need to add index.php as the first value of our index directive so that files named index.php are served,  
   if available, when a directory is requested.
2. We can modify the server_name directive to point to our server's domain name or public IP address.
3. For the actual PHP processing, we just need to uncomment a segment of the file that handles PHP requests by removing 
   the pound symbols (#) from in front of each line. This will be the location ~\.php$ location block, the included 
   fastcgi-php.conf snippet, and the socket associated with php-fpm.
4. We will also uncomment the location block dealing with .htaccess files using the same method. Nginx doesn't process 
   these files. If any of these files happen to find their way into the document root, they should not be served to 
   visitors.
```
sudo vim /etc/nginx/sites-available/a.example.conf

# Modify the following, save and exit.
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    # [NOTE] 1. Add index.php here
    index index.php index.html index.htm index.nginx-debian.html;

    # [NOTE] 2. Add the servername 
    server_name server_domain_or_IP;

    # [NOTE] 3. Uncomment or Add the following for PHP processing 
    location / {
        try_files $uri $uri/ =404;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php7.0-fpm.sock;
    }

    # [NOTE] 4. Uncomment or Add the following for PHP processing 
    location ~ /\.ht {
        deny all;
    }
}

# Test the config
sudo nginx -t

# Reload Nginx
sudo systemctl reload nginx
```

### Test PHP setup
```bash
# Choose the root as /var/www/html based on the server configuration above.
sudo vim /var/www/html/info.php

# Add the following, save the file and exit.
<?php
phpinfo();
```
- Now hit the URL http://server_domain_or_IP/info.php and verify if PHP information is displayed.
