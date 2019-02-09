# Description: virsh - management user interface

# Notes
# 1. The virsh command is used to manage virtual machines.
# 2. This utility is built around the libvirt management API and operates as an alternative to the xm tool or the
#    graphical Virtual Machine Manager.

# Common Examples
start guest_name                            # Start a guest
shutdown guest_name                         # Shutdown a guest (gently)
destroy guest_name                          # Shutdown a guest (wild)
suspend guests_name                         # Suspend a guest
resume guest_name                           # Resume a suspended guest
create xml_file.xml                         # Create a guest from its XML definition
dumpxml guest_name                          # Dump a guest’s definition in XML
edit guests_name                            # Modify a guest’s definition
undefine guests_name                        # Remove a guest’s definition (it doesn’t remove the image file)

# Examples with details
virsh                                       # Start virsh command prompt and connects to the localhost hypervisor.
virsh -c qemu+ssh://dilbert@mars/system     # Connect to the remote machine mars with user as dilbert using qemu+ssh
                                            # protocol.

# Virsh Prompt Common Commands
help                                        # Print help from virsh prompt.
help connect                                # Print help about connect command from virsh prompt.
exit                                        # Quit the interactive terminal.
quit                                        # Same as above. Quit the interactive terminal.
pwd                                         # Print the present working directory.
cd                                          # Change to home directory.
cd /home/dilbert/work                       # Change to /home/dilbert/work directory.
echo One Two Three                          # Echo arguments.

# Virsh Prompt Command - connect
connect                                     # Connect to local hypervisor. Built-in command after shell start up.
connect qemu+ssh://dilbert@mars/system      # Connect to a remote machine mars with user as dilbert using qemu+ssh
                                            # protocol.
# Virsh Prompt Command - list
list --all                                  # List all defined guests - list inactive & active domains
list --inactive                             # list inactive domains
list --transient                            # List transient domains
list --persistent                           # List persistent domains
list --with-snapshot                        # List domains with existing snapshot
list --without-snapshot                     # List domains without a snapshot
list --state-running                        # List domains in running state
list --state-paused                         # List domains in paused state
list --state-shutoff                        # List domains in shutoff state
list --state-other                          # List domains in other states
list --autostart                            # List domains with autostart enabled
list --no-autostart                         # List domains with autostart disabled
list --with-managed-save                    # List domains with managed save state
list --without-managed-save                 # List domains without managed save
list --uuid                                 # List uuid's only
list --name                                 # List domain names only
list --table                                # List table (default)
list --managed-save                         # Mark inactive domains with managed save state
list --title                                # Show short domain description

# Virsh Prompt Command - dominfo
dominfo otter                               #  Returns basic information about the domain

# Backup and restore guests
save guest's_name guest's_state_file        # Save a guest’s state on a file
restore guest_state_file                    # Restore a guest from a state file

# Cool Tricks
# 1. Add a regularly used connection string as an alias to virsh.
alias virsh="virsh -c qemu+ssh://dilbert@mars/system"

# TODO
# None
