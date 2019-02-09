# Description: Tomcat Administration on Ubuntu

### Install Tomcat on Ubuntu 16.04
* Java 8 is a perquisite for Apache Tomcat 9.
```
# Create the Tomcat Folder
sudo mkdir /opt/tomcat
cd /opt/tomcat

# Download Apache Tomcat 9 *.tar.gz file from the website
wget http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz

# Install Apache Tomcat
tar -xavf apache-tomcat-9.0.14.tar.gz               # Extract files
sudo mv ~/Downloads/apache-tomcat-9.0.14/ .         # Move Files

# Configure JAVA_HOME and CATALINE_HOME in .bashrc File and save it.
vim ~/.bashrc
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export CATALINA_HOME="/opt/tomcat/apache-tomcat-9.0.14"

# Execute .bashrc on a command line or open a new terminal
source ~/.bashrc
```

### Test Tomcat Installation
```
cd $CATALINA_HOME/bin/
./startup.sh

# Output
Using CATALINA_BASE: /opt/tomcat
Using CATALINA_HOME: /opt/tomcat
Using CATALINA_TMPDIR: /opt/tomcat/temp
Using JRE_HOME: /usr/lib/jvm/java-7-openjdk-amd64/
Using CLASSPATH: /opt/tomcat/bin/bootstrap.jar:/opt/tomcat/bin/tomcat-juli.jar
Tomcat started

# Open the URL in browser
http://127.0.0.1:8080/
```

### [Optional for Local Development Work] Configure Tomcat
```
# Create a new tomcat group
sudo groupadd tomcat

# Create a new user tomcat
# Use -s for No Shell
# Use -g for using tomcat group created above
# Use -d to specify the home directory as /opt/tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat

# Change user and group for /opt/tomcat directory
cd /opt/tomcat
sudo chown -R tomcat:tomcat /opt/tomcat

# Make the conf file readable
sudo chmod -R g+r /opt/tomcat/apache-tomcat-9.0.14/conf/

# Make the user 'tomcat' the owner of the webapps, work, temp, and logs directories
sudo chown -R  tomcat /opt/tomcat/apache-tomcat-9.0.14/webapps
sudo chown -R  tomcat /opt/tomcat/apache-tomcat-9.0.14/work
sudo chown -R  tomcat /opt/tomcat/apache-tomcat-9.0.14/temp
sudo chown -R  tomcat /opt/tomcat/apache-tomcat-9.0.14/logs
```

### Create a systemd Service File
* Tomcat needs to know where Java is installed. 
* The corr

```
# Find location of Java
sudo update-java-alternatives -l

# Output
# java-1.8.0-openjdk-amd64       1081       /usr/lib/jvm/java-1.8.0-openjdk-amd64

# JAVA_HOME for Tomcat Service will be the above output with /jre appended at the end. 
# JAVA_HOME='/usr/lib/jvm/java-1.8.0-openjdk-amd64/jre'

# Open a new file tomcat.service 
sudo gvim /etc/systemd/system/tomcat.service

# Add the following content and save it
########################################################################################
[Unit]
Description=Apache Tomcat Web Application Container
After=network.target

[Service]
Type=forking

Environment=JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/jre
Environment=CATALINA_PID=/opt/tomcat/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/tomcat
Environment=CATALINA_BASE=/opt/tomcat
Environment='CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC'
Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom'

ExecStart=/opt/tomcat/bin/startup.sh
ExecStop=/opt/tomcat/bin/shutdown.sh

User=tomcat
Group=tomcat
UMask=0007
RestartSec=10
Restart=always

[Install]
WantedBy=multi-user.target
########################################################################################

# Reload the systemd daemon 
sudo systemctl daemon-reload

# Start the Tomcat service
sudo systemctl start tomcat

# Check tomcat status
sudo systemctl status tomcat
```

### Setup Linux Firewall Rule to Allow Port 8080
``` 
# Allow traffic to port 8080
sudo ufw allow 8080
```

### Test Tomcat Installation Again
```
# Open the URL in browser
http://127.0.0.1:8080/
```

### TODO
* [Configure Tomcat Web Management Interface](https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-16-04)
