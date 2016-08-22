# Description: MySQL Server Administration on Ubuntu

### Install MySQL Server
```
sudo apt-get install mysql-server
```
- Note: Enter some username (Say root) and password (Say admin).

### Configure MySQL Server
- Enable load data by editing my.cnf. [Read details here.](http://stackoverflow.com/questions/10762239/mysql-enable-load-data-local-infile)

```
sudo gvim /etc/mysql/my.cnf

# Add a line "local-infile=1" under [mysql] section
[mysql]
#no-auto-rehash     # faster start of mysql but no tab completion
local-infile=1      # Add this lines

# Save and exit

# Restart MySQL service
sudo service mysql restart
```

- Add directories in apparmor so the MySQL can read from specific directories

```
cd /etc/apparmor.d/                 # Go to apparmor directory
sudo gvim usr.sbin.mysqld           # Edit usr.sbin.mysqld file

# Add the following entries
/tmp/* r,
# Add additional paths here,

# Restart apparmor
sudo service apparmor restart
```

- Make MySQL Server accessible from remote machines.

```
# Expose MySQL to remote machines other than localhost by commenting the following line in /etc/mysql/my.cnf
bind-address = 127.0.0.1

# Note
# 1. This will take care of the issue "ERROR 2003 (HY000): Can't connect to MySQL server on 'host' (111).
# 2. Alternatively, replace 127.xxx.xxx.xxx with a particular IP Address or 0.0.0.0

# Grant all access to the root user
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'PASSWORD' WITH GRANT OPTION;
# Note
# 1. Change 'PASSWORD' to appropriate passord before executing the above grant statement.
# 2. This will take care of the issue "ERROR 1130 (HY000): Host '192.X.X.X' is not allowed to connect to this MySQL server"

# Restart MySQL Service
sudo service mysql restart
```

### Customize MySQL prompts
- [Read details here](http://www.thegeekstuff.com/2010/02/mysql_ps1-6-examples-to-make-your-mysql-prompt-like-angelina-jolie/)

### Uninstall MySQL Server along with data and the configuration files
```
sudo service mysql stop
sudo killall -9 mysql
sudo killall -9 mysqld

sudo apt-get remove --purge mysql-server mysql-client mysql-common
sudo apt-get remove --purge mysql-server-core-5.5 mysql-client-core-5.5
sudo apt-get purge mysql-server-core-5.5
sudo apt-get purge mysql-client-core-5.5
sudo apt-get remove --purge mysql*

sudo apt-get autoremove
sudo apt-get autoclean

sudo deluser mysql
sudo rm -rf /var/lib/mysql
sudo rm -rf /etc/mysql
```
