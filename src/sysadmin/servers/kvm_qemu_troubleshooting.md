# Description: Troubleshooting KVM/QEMU on Ubuntu

## Add a Hard Drive (or Any Block Device) to a VM/Guest
This cannot be done with virt-manager since virt-manager works with storage pools. A storage pool can be created from 
the second hard disk and attach it the VM using virt-manager but a disk cannot be directly added to a VM. 

Here are the steps to add a hard drive (or any physical block devices like CD-ROM, DVD etc) on the host physical machine 
to a guest.

* Physically attach the hard disk device to the host physical machine or hypervisor 
* See [Administer Hard Disk on Ubuntu](administer_ubuntu_harddisk.md) to configure the host physical machine if the 
  drive is not accessible by default. Create partition table and format the disk but DO NOT create mount point or 
  auto-mount the disk on host/hypervisor.
* Add the disk to the domain’s xml config file by hand.

```shell
# Go to path containing all the domain definition.
cd /etc/libvirt/qemu/

sudo vim <hostname>.xml

# Add the following <disk> section to the <devices> section of the file.
<disk type='block' device='disk'>
  <driver name='qemu' type='raw'/>
  <source dev='/dev/sdb1'/>
  <target dev='vdb' bus='virtio'/>
</disk>
 
# Redefine the VM
virsh define /etc/libvirt/qemu/<hostname>.xml
# It should display the success message as "Domain sarus defined from /etc/libvirt/qemu/<hostname>.xml".

# Restart the VM/Guest to find the disk as vdb
sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL

# Partition the disk
sudo fdisk /dev/vdb

# Format the disk
sudo mkfs -t ext4 /dev/vdb

# Add an entry to the /etc/fstab to mount the disk automatically.
sudo vim /etc/fstab
/dev/vdb1    /media/harddisk_2  ext4    defaults 0 1

# Restart the machine.

# Check the mountpoint
df
```

### TODO
* None
