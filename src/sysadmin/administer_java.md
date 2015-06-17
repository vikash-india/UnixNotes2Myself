# Description: Oracle JDK Administration on Ubuntu

### Install Oracle JDK 6.0.27
- Download Linux x86/x64 - Self Extracting Installer for   Oracle JDK 6u27 from [here](http://www.oracle.com/technetwork/java/javasebusiness/downloads/java-archive-downloads-javase6-419409.html#jdk-6u27-oth-JPR)
- Make the bin file executable
```
chmod +x jdk-6u27-linux-x64.bin
```
- Extract the bin file
```
./jdk-6u27-linux-x64.bin
```
- Move extracted folder to this location
```
sudo mv jdk1.6.0_27 /usr/lib/jvm/jdk1.6.0_27
```
- Install new java source in system
```
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.6.0_27/bin/javac 1
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.6.0_27/bin/java 1
sudo update-alternatives --install /usr/bin/javaws javaws /usr/lib/jvm/jdk1.6.0_27/bin/javaws 1
```
- Choose default java
```
sudo update-alternatives --config javac
sudo update-alternatives --config java
sudo update-alternatives --config javaws
```
- Test installation by checking java version
```
java -version
```
- Verify the symlinks all point to the new java location
```
ls -la /etc/alternatives/java*
```

### Enable Java plugin for Mozilla Firefox (even for Chrome)
- For 64-Bit jdk:
```
sudo ln -s /usr/lib/jvm/jdk1.6.0_27/jre/lib/amd64/libnpjp2.so /usr/lib/mozilla/plugins
```
- For 32-Bit jdk:
```
sudo ln -s /usr/lib/jvm/jdk1.6.0_27/jre/lib/i386/libnpjp2.so /usr/lib/mozilla/plugins
```
