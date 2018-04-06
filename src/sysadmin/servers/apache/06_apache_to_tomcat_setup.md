# Description: Apache to Tomcat Connector Configuration

### Prerequisites
- Install Apache2
- Install Apache Tomcat

### Install Mod JK
- Apache 2 connector for the Tomcat Java servlet engine

```bash
sudo apt-get install libapache2-mod-jk
```

### Configure Mod JK 
- Create or copy /etc/apache2/worker.properties
- Remove default mod jk configuration if already present

```bash
sudo gvim /etc/apache2/mods-enabled/jk.conf 

# Comment the below 3 lines in case they are already present in the custom my.conf file.
# JkWorkersFile...
# JkLogFile...
# JkLogLevel...
```
