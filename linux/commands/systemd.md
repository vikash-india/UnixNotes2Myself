# Description: Understanding Systemd

## Systemd
- Systemd is an init system and a system manager.
- *Init System*: An init system initializes the components that must be started after the Linux kernel is booted  
  (traditionally known as "userland" components).
- *System Manager*: A system manager manages services and daemons for the server at any point while the system is 
  running.
- Systemd is an improvement over traditional init systems like SysV or even modern init systems like upstart.
- Systemd is widely becoming the new standard for Linux machines. Ubuntu 16.04 is the latest to switch from 'upstart' 
  to 'systemd'. In fact, systemd is the de facto standard in Ubuntu 15.04 or later, Debian 8 or later, CentOS 7 or later 
  and Fedora 15 or later.
- The systemd suite of tools provides a fast and flexible init model for managing an entire machine from boot onwards.

## Unit Objects & Unit Files
- The basic object that systemd manages and acts upon is a 'unit'.
- Units are categorized by the type of resource they represent and they are defined with files known as unit files. In
  other words, unit objects have unit files which contains the parameters that systemd uses to manage and run a unit.
- Unit objects can be of many types. The type of each unit can be inferred from the suffix on the end of the file.
- The most common unit type is a 'service' unit which is controlled using the unit files with .service suffix. 

## The Systemctl Command
- Visit [systemctl.sh](systemctl.sh) for examples.
- The systemctl command is the most important tool on systemd enabled servers. It is used for the following
    - Service Management
        - Check the status of a service.
        - Start a service.
        - Stop a service.
        - Restart a service.
        - Reload a service.
        - Enable a service.
        - Disable a service.
    - Unit Management
        - Display a unit file.
        - Display dependencies.
        - Check unit properties.
        - Mask and unmask units.
        - Edit unit files.
    - System State Overview
        - Adjusting the System State (Runlevel) using targets.
- All of the normal init system commands have equivalent actions with the systemctl command.

## The Journald/Journalctl
- Visit [journalctl.sh](journalctl.sh) for examples.
- The journald is a systemd component that collects and manages journal entries from all parts of the system. 
- In other words, journald manages log information from applications and the kernel.
- The journalctl command can be used to access the following journald state and log information,
    - General system state.
    - Individual units.

## The Logind/Loginctl
- The logind is a systemd component (a separate daemon) that manages user sessions.

### Enabling/Disabling Units
- By default, most systemd unit objects are not started automatically at boot. 
- Enable a unit to configure starting the respective unit service at boot. 
- Enabling hooks it up to a certain boot "target", causing it to be triggered when that target is started.
- Enabling a service creates a symbolic link from the system's copy of the service file (usually in /lib/systemd/system 
  or /etc/systemd/system) into the location on disk where systemd looks for autostart files (usually 
  /etc/systemd/system/some_target.target.wants).
- Disabling a service removes the symbolic link created by enabling the service.
- Enabling a service does not start it in the current session. The service should be started explicitly for the current
  session or the system should be restarted.

### Modifying Units
- Systemd allows modification to a unit file using the systemctl command itself instead of going to actual disk file to
  modify a service.

### Difference between Service and Systemctl Scripts
- The service scripts internally calls systemctl scripts.
- The service scripts will work whether your init system is systemd or sysvinit or upstart but service script is
  limited in scope as compared to systemctl.

## See Also
- [systemctl.sh](systemctl.sh) 
- [journalctl.sh](journalctl.sh)

### TODO
* 1. Understand the structure of a unit file.
* 2. Convert a shell or python script into a systemd service.
