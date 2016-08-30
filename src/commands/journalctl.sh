# Description: journalctl - Query the systemd journal

# Notes
# None

# Common Examples
journalctl
journalctl -u nginx

# Examples with details
# Querying System States and Logs
journalctl                      # View all log entries, starting at the oldest entry. By default, this will show entries
                                # from the current and previous boots if journald is configured to save previous boot
                                # records. Some distributions enable this by default, while others do not (to enable
                                # this, either edit the /etc/systemd/journald.conf file and set the Storage= option to
                                # "persistent", or create the persistent directory by typing sudo mkdir -p
                                # /var/log/journal).
journalctl -b                   # Use -b switch to see the journal entries from the current boot.
journalctl -k                   # Use -k switch to see only kernel messages, such as those that are typically
                                # represented by dmesg.
journalctl -k -b                # View only kernel messages for the current boot session only.

# Querying Unit States and Logs
journalctl -u nginx.service     # Use the -u option along with unit name to see al journal entries for a unit.
journalctl -u nginx             # Same as above
journalctl -b -u nginx.service  # Use -b option to limit the entries to current session only.

# Cool Tricks
# None

# TODO
# None
