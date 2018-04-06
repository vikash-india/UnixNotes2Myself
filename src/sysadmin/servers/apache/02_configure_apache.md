# Description: Setup Apache2 for Perfios Environment

# 1. Copy /etc/apache2/sites-available/kubera.conf from the backup

# 2. Copy /etc/apache2/worker.properties from the backup

# 3. Comment these 3 lines in sudo gvim /etc/apache2/mods-enabled/jk.conf as they are already present in kubera.conf file.
#       JkWorkersFile...
#       JkLogFile...
#       JkLogLevel...

# 4. Create kubera.conf symlinks in site-enabled using the following commands
sudo a2ensite kubera

# 5. Remove /etc/apache2/sites-enabled/000-default.conf using the following command
sudo rm /etc/apache2/sites-enabled/000-default.conf

# 6. Enable these proxy modules using the following commands
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo a2enmod rewrite

# 7. Restart Apache2
sudo service apache2 restart
