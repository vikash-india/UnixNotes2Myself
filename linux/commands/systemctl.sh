# Description: systemctl - Control the systemd system and service manager

# Notes
# None

# Common Examples
sudo systemctl status nginx
sudo systemctl reload-or-restart nginx
sudo systemctl edit nginx
sudo systemctl daemon-reload

# Examples with details
# Service Management Tasks
systemctl status nginx.service              # Shows the status or current state of a unit. This shows whether the unit
                                            # is active, information about the process, and the latest journal entries.
systemctl status nginx                      # Same as above as the .service suffix is optional. For most service
                                            # management commands, the .service suffix can be omitted as systemd is
                                            # smart enough to know that service management commands should work on a
                                            # a service.

sudo systemctl start nginx                  # Start the service.
sudo systemctl stop nginx                   # Stop the service.
sudo systemctl restart nginx                # Restart the service.
sudo systemctl reload nginx                 # Reload a service without interrupting normal functionality if a service
                                            # (nginx here) is capable of reloading its configuration file (without
                                            # restarting).
sudo systemctl reload-or-restart nginx      # Use reload-or-restart command if one is unsure whether the service has the
                                            # functionality to reload its configuration.

sudo systemctl enable nginx                 # Enable a service to start automatically at boot.
sudo systemctl disable nginx                # Disable a service to NOT to start automatically at boot.

systemctl is-active nginx                   # Use sub-command is-active to check for specific state 'active'.
systemctl is-enabled nginx                  # Check if the unit is enabled.
systemctl is-failed nginx                   # Check whether the unit is in a failed state. This indicates that there was
                                            # a problem starting the unit. This will return active if it is running
                                            # properly or failed if an error occurred. If the unit was intentionally
                                            # stopped, it may return unknown or inactive. An exit status of "0"
                                            # indicates that a failure occurred and an exit status of "1" indicates any
                                            # other status.

# Unit Management Tasks
systemctl cat nginx                         # View the full contents of a unit file.
systemctl show nginx                        # View the low-level details of the unit's settings on the system. This
                                            # shows the value of each parameter being managed by systemd.
systemctl show nginx -p ExecStart           # Use the -p flag to display a single property.

systemctl list-dependencies nginx           # View the dependency tree of a unit. Dependent units are the units systemd
                                            # will attempt to activate when starting the unit).
systemctl list-dependencies --all nginx     # The above command will show the dependent units, with target units
                                            # recursively expanded. Use the --all flag to expand all dependent units
                                            # recursively.
systemctl list-dependencies nginx --reverse # Use the --reverse flag to show reverse dependencies (units that depend on
                                            # the specified unit).
systemctl list-dependencies nginx --before  # Use the --before flag to view units that depend on the specified unit
                                            # starting before themselves
systemctl list-dependencies nginx --after   # Use the --after flag to view units that depend on the specified unit
                                            # starting after themselves.

sudo systemctl edit nginx                   # 1. This will be a blank file that can be used to override or add
                                            #    directives to the unit definition. A directory will be created within
                                            #    the /etc/systemd/system directory which contains the name of the unit
                                            #    with .d appended. For instance, for the nginx.service, a directory
                                            #    called nginx.service.d will be created.
                                            # 2. Within this directory, a snippet will be created called override.conf.
                                            #    When the unit is loaded, systemd will, in memory, merge the override
                                            #    snippet with the full unit file. The snippet's directives will take
                                            #    precedence over those found in the original unit file.
sudo systemctl edit --full nginx            # 1. Use the --full flag to modify the entire content of the unit file
                                            #    instead of creating a snippet overriding the defaults.
                                            # 2. When the editor exits, the changed file will be written to
                                            #    /etc/systemd/system, which will take precedence over the system's unit
                                            #    definition (usually found somewhere in /lib/systemd/system).

sudo rm -r /etc/systemd/system/nginx.service.d #  The modifications can be removed by either deleting the unit's .d
                                            # configuration directory or the modified service file from
                                            # /etc/systemd/system.
sudo rm /etc/systemd/system/nginx.service   # Remove a full modified unit file.
sudo systemctl daemon-reload                # The systemd process itself needs to be reloaded to pick up the changes
                                            # made using edit sub command or the sudo rm command.

# System State Overview Tasks
systemctl list-units                        # Get all of the unit files that systemd has listed as 'active'.
systemctl                                   # Same as above. Adding 'list-units' is optional.
systemctl list-units --all                  # List all of the units that systemd has loaded or attempted to load into
                                            # memory, including those that are not currently active.
systemctl --all                             # Same as above.
systemctl list-unit-files                   # List all of the units installed on the system, including those that
                                            # systemd has not tried to load into memory. The output will have only two
                                            # columns - the unit file and the state because systemd does not read full
                                            # configurations of the uninitialized units.
systemctl list-units --all --state=inactive # Use the --state=flag to filter the LOAD, ACTIVE, or SUB states.
systemctl list-units --type=service         # Use the --type=flag to filter the result and to only display units of a
                                            # a particular type.

# Stopping and Rebooting the Server
sudo systemctl halt                         # Halt the system. Systemd targets are defined for important events like
                                            # halting, powering off or rebooting. Most operating systems include
                                            # traditional aliases to these operations so that 'sudo poweroff' or
                                            # 'sudo reboot' work without the systemctl. The 'sudo poweroff' internally
                                            # calls 'sudo systemctl poweroff'.
sudo systemctl poweroff                     # Power off the machine to initiate a full shutdown.
sudo systemctl reboot                       # Reboot the machine.
sudo systemctl rescue                       # Boot into rescue mode of the machine.

# Cool Tricks
# None

# TODO
# None