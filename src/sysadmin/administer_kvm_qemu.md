# Description: KVM-QEMU Administration on Ubuntu

## Terminologies
- Kernel-based Virtual Machine (KVM) is a virtualization infrastructure for the Linux kernel that turns it into a
  hypervisor.
- KVM functions by utilizing the CPU virtualization technology extensions on modern Intel and AMD processors, known as
  Intel-VT and AMD-V.
- Using a kernel module loaded into memory, KVM utilizes the processor and, via user-mode driver based on modified
  QEMU, it emulates a hardware layer upon which virtual machines can be created and run.
- KVM can also be executed without the CPU extensions, but then, it will run in a pure emulation mode using QEMU,
  resulting in a significant performance penalty.
- KVM can be managed either via a graphical management tool, similar to VMware products or VirtualBox, or via command
  line tools.
- The most popular GUI tool is called Virtual Machine Manager (VMM), developed by RedHat. The tool is also know by its
  generic package name virt-manager. It comes with a number of supporting tools, including virt-install, virt-clone,
  virt-image, and virt-viewer, which are used to provision, clone, install, and view virtual machines, respectively.
- The generic KVM command line tool is provided by virsh. Specifically, one can use the supporting tools, like
  virt-install for creating your virtual machines.
- Advantages
    - Over-committing : Which means allocating more virtualized CPUs or memory than the available resources on the
      system.
    - Thin provisioning : Which allows the allocation of flexible storage and optimizes the available space for every
      guest virtual machine.
    - Disk I/O throttling : Provides the ability to set a limit on disk I/O requests sent from virtual machines to the
      host machine.
    - Automatic NUMA balancing : Improves the performance of applications running on NUMA hardware systems.
    - Virtual CPU hot add capability : Provides the ability to increase processing power as needed on running virtual
      machines, without downtime.
- Disadvantage
    - If a CPU does not support virtualization, KVM is a big waste of time VMs will be running in an extremely slow
      and inefficient emulation mode. KVM is also known to conflict with Virtualbox.

## Prerequisites
##### 1. Make sure that virtualization technology is enabled in BIOS.

##### 2. Install Ubuntu Server with OpenSSH and Virtual Machine Host applications checked.

##### 3. Check if CPU supports hardware virtualization.
```
egrep -c '(vmx|svm)' /proc/cpuinfo

# An output of 1 or more means virtualization is supported but one still needs
# to make sure that virtualization is enabled in the BIOS
```

##### 4. Check if KVM can be installed.
```
kvm-ok

# Success Message
  INFO: /dev/kvm exists
  KVM acceleration can be used

# Failure Message
  INFO: Your CPU does not support KVM extensions
  KVM acceleration can NOT be used
```

##### 5. Check if a 64-bit Linux kernel is running on a 64-bit processor.
```
# Check if it's a 64-bit processor.
egrep -c ' lm ' /proc/cpuinfo

# Check if it's a 64-bit Linux kernel.
uname -m
```

## Install KVM
##### 1. Install KVM
- The libvirt-bin package provides libvirtd which is used to administer qemu and kvm instances using libvirt.
- The qemu-kvm package is the backend.
- The ubuntu-vm-builder package is a powerful command line tool for building virtual machines.
- The bridge-utils package provides a bridge from your network to the virtual machines.

```
sudo apt-get install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
```

##### 2. Optionally Install a GUI Tool to Manage Virtual Machines
- This is applicable for an Ubuntu Desktop running a KVM.

```
sudo apt-get install virt-manager
```

## Setup KVM
##### Assumptions
- SSH access is enabled on the KVM host for a user.
- The virt-manager is installed locally on the machine from where KVM host will be managed.

##### 1. Add the current user to the group libvirtd.
- The members of this group can run virtual machines.
- After this, one needs to relogin to ensure that the user becomes an effective member of the libvirtd group.

```
ssh username@kvm-host-name
sudo adduser `id -un` libvirtd

# Ensure that the username is added to the groups libvirtd
groups
```

##### 2. Verify KVM Installation
```
virsh -c qemu:///system list

# Success Message
  Id Name                 State
  ----------------------------------

# Failure Message
  libvir: Remote error : Permission denied
  error: failed to connect to the hypervisor
```

##### 3. Verify libvirt-bin daemon is running
```
status libvirt-bin
# Success Message
    libvirt-bin start/running, process 1556
# Failure Message
    status: Unknown job: libvirt-bin
```

##### 4. Setup a Path for ISO Images
```
cd /opt
sudo mkdir ISOs
cd ISOs/
mv ~/ubuntu-14.04.4-server-amd64.iso .
sudo chown libvirt-qemu:kvm ubuntu-14.04.4-server-amd64.iso
```

##### 5. Create a Storage Pool in KVM for ISOs
- Open Virtual Machine Manager on LOCAL MACHINE - File - Add Connection - Connect to Remote Host - Enter SSH details.
- Right click on 'Machine Name' - Select 'Details' - Select 'Storage' tab - Click on ‘+‘ button.
- Enter the name of the pool (say ISOs)
- Select Type of Storage as Filesystem Directory
- Map path to /opt/ISOs
- A new pool will show up below default.

##### 6. Create a Bridged Network
```
# Open interfaces file and add the following content
sudo vi /etc/network/interaces

# The bridge network
auto br0
iface br0 inet dhcp
   bridge_ports em1
   bridge_stp on
   bridge_fd 0

# Reboot the machine to check if br0 network has got IP and is connected to Internet
ifconfig
```

##### 7. Create Virtual Machines
- __Connect to Remote KVM:__ Open Virtual Machine Manager on LOCAL MACHINE - Double Click on 'Machine Name (QEMU)' to
  connect to KVM on remote host.
- __Specify OS Image:__ Right click on 'Machine Name (QEMU)' - Enter machine name - Select Local Install Media (ISO
  image or CDROM) - Click Forward - Select Use ISO image - Click on Browse - Select ISOs under Storage Pools -
  Select Ubuntu 14.04 Server - Click Choose Volume.
- __Specify Harddisk:__ Click Forward - Select Enable Storage for this virtual machine - Select managed or other existing Storage -
  Click on Browse - Select 'default' under Storage Pools - Click New Volume - Enter Name as guest-name and format as
  'raw' - Under Storage Volume Quota, set Max Capacity and Allocation as the same value.

  Note
    - The allocation size is the actual size for your disk which will be allocated immediately from your physical disk
      after finishing the steps.
    - This is an important technology in storage administration field which called “thin provision”. It used to allocate
      the used storage size only, NOT all of available size.

## TODO
* None

## Notes
* None
