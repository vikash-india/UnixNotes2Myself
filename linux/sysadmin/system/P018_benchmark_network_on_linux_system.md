# Description: Benchmark Network on a Linux System

### Install Tools
```
sudo apt-get install iperf 
```

### Benchmark Simple Network Throughput Measurement Using the `iperf` Tool
* This test will give an overview of the network's TCP connection throughput speed.
* First start an iperf server on a server machine.
* This will start the iperf in server mode, by binding to port 8080 with all available network interfaces.

```bash
iperf -s -p 8000
```
* Now connect to the above server with iperf as a client this time.
* Update the IP address in the below command with the server IP address.
```bash
iperf -c 192.168.0.53 -p 8000
```

### Benchmark Network Speed Using the `ncmeter` Tool
* The `ncmeter` is a simple bash shell script which uses netcat-openbsd to measure data throughput of a network. 
* The script is a part of the netcat-openbsd package in Debian based distros, located at the path
   /usr/share/doc/netcat-openbsd/examples/contrib/ncmeter folder. 
* Copy that script to /usr/local/bin or some path, make it executable with `chmod +x`, and then run the script.

```bash
cp /usr/share/doc/netcat-openbsd/examples/contrib/ncmeter ~/Downloads/

chmod +x ~/Downloads/ncmeter

cd ~/Downloads
./ncmeter --help  # Check available options
```
* Start the ncmeter in server mode. This will binds all available network interfaces to port 23457.
```bash
./ncmeter
```
* Open up a new terminal and run the following command after replacing the IP address

```bash
./ncmeter 192.168.0.53 256M
```

### TODO
* None
