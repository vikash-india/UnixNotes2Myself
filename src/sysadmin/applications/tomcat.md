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

### TODO
* None
