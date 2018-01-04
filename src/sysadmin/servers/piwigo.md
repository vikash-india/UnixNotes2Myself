# Description: Piwigo Administration on Ubuntu

### Install and Setup Nginx
- Install Nginx.
- Setup up a virtual host with its own configuration file under site-available.

### Install and Setup MySQL
- Install MySQL
- Create a user and a database
```
# Create a piwigo user for piwigo database
mysql -uroot -p

CREATE DATABASE piwigo;
CREATE USER 'piwigo'@'localhost' IDENTIFIED BY 'PASSWORD';
GRANT ALL PRIVILEGES ON piwigo . * TO 'piwigo'@'localhost';
FLUSH PRIVILEGES;
quit
```

### Install and Setup PHP7
- Piwigo 2.8 onwards is compatible with PHP7.0 and is much faster.
- Setup PHP7.0 for Nginx using the instructions [here](/home/vikash/Personal/Workspace/UnixNotes2Myself/src/sysadmin/servers/nginx/07_setup_php_for_nginx.md).
- 

php7.0-fpm php7.0 php7.0-mysql 
sudo apt-get install php5-imap php-pear php5-sqlite php5-ldap php5-gd php5-imagick php5-curl php-apc
apt-get install php5-mcrypt php5-pspell php5-xmlrpc php5-xsl php5-cgi php-auth php-auth-sasl php-net-smtp

### TODO
* None
