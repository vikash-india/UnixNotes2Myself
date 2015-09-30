# Description: Scala Administration on Ubuntu

### Install Scala Using Package Manager
```
# Install Scala using Package Manager
wget www.scala-lang.org/files/archive/scala-2.11.7.deb
sudo dpkg -i scala-2.11.7.deb
```

# OR

### Install Scala Manually
* Download Scala binary from [here](http://www.scala-lang.org/download/) and unpack the archive.

```
# Move the extracted file to ~/bin
mv scala-2.11.7 ~/bin

# Add scala and scalac to PATH in .bashrc file
export SCALA_HOME="~/bin/scala-2.11.7"
$PATH $PATH:$SCALA_HOME/bin
```

### Install SBT Using Package Manager
```
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update
sudo apt-get install sbt
```

# OR

### Install SBT Manually
* Download [sbt-launcher-jar](https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/0.13.9/sbt-launch.jar?_ga=1.100084382.1806212415.1443086245).

```
# Move sbt-launch.jar in ~/bin/sbt.
mv sbt-launch.jar ~/bin/SBT

# Create a script to run the jar, by creating ~/bin/SBT/sbt with these contents
#!/bin/bash
SBT_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
java $SBT_OPTS -jar `dirname $0`/sbt-launch.jar "$@"

# Make the script executable:
chmod u+x ~/bin/SBT/sbt

# Download Dependencies by Executing the Following Commands and Leave It For 10 Minutes
sbt

# Test Installation by Checking Version
sbt --version
```

### TODO
* None
