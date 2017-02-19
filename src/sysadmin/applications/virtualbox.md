# Description: VirtualBox Administration on Ubuntu

### Install Oracle VirtualBox
```
sudo sh -c 'echo ""deb http://download.virtualbox.org/virtualbox/debian trusty contrib"" >> /etc/apt/sources.list'
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-4.3
```

### Setup Host-Only Static IP for VirtualBox Guests
A typical setup VirtualBox uses two NICs. The first uses NAT to allow the box to communicate with the outside world through the host computer’s network connection. NAT is the default and does not require any setup. The second uses a "host-only" connection that allows the host and guest to interact.

Ceate a host-only connection in VirtualBox by opening the VirtualBox - File - Preferences - Network - Host-only Network tab. Click on "+" to add a new network "vboxnet0". Click on "Edit" to modify the host-only network, and disable DHCP. Make a note of the IP address if needed.

Now assign this host-only adapter to the virtual machine. Select the VM Guest - Settings - Network. Select "Adpater 2". Enable the adapter, set it to a "Host-only Adapter", and select the adpater "vboxnet0" created in the above steps.

Add the static IP permanently to the VM guest. 

```bash
# On VM GUEST: Modify the configuration file /etc/network/interfaces to configure eth1 to use a static IP address when the system starts.
sudo vim /etc/network/interfaces

# The host-only network interface
auto eth1
iface eth1 inet static
address 192.168.56.101
netmask 255.255.255.0
network 192.168.56.0
broadcast 192.168.56.255
```

Now access the VM Guest from the Host by adding entries in /etc/hosts file of the Host. 
