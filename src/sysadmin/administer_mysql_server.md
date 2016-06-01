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
# Expose MySQL to remote machines other than localhost by uncommenting  the following line in /etc/mysql/my.cnf
bind-address        =  0.0.0.0

# Replace 127.xxx.xxx.xxx with a particular IP Address or 0.0.0.0

# Restart MySQL Service
sudo service mysql restart

# Grant access
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'PASSWORD' WITH GRANT OPTION;
```

### Customize MySQL prompts
- [Read details here](http://www.thegeekstuff.com/2010/02/mysql_ps1-6-examples-to-make-your-mysql-prompt-like-angelina-jolie/)

### Uninstall MySQL Server along with data and the configuration file
```
sudo apt-get remove --purge mysql-server mysql-client mysql-common
sudo apt-get autoremove
sudo apt-get autoclean
```
