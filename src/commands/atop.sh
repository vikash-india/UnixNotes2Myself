# Description: atop - AT Computing's System & Process Monitor

# Notes
# - The atop is an open source software to monitor system and processes and log its history.
# - Install atop using the command `sudo apt-get install atop`.
# - By default the atop daemon writes snapshots to a compressed log file to path /var/log/atop/atop_YYYYMMDD.
# - The default configuration file is stored /etc/default/atop.
# - Stop atop accounting by sending kill -15. Never shutdown atop using kill -9 because system accounting files
#   will continue.

# Common Examples
atop -r /var/log/atop/atop_20170829
systemctl restart atop.service

# Examples with details
systemctl restart atop.service      # Restart atop service after editing the config file /etc/default/atop.

atop -r /var/log/atop/atop_20170829 # Read atop log files (compressed and binary). Use t/T to move.

atop -a                             # Display active processes only.
atop -y                             # Display individual threads.
atop -1                             # Display average-per-second i.s.o. total values.
atop -m                             # Display memory-related process-info.
atop -d                             # Display disk-related process-info.
atop -n                             # Display network-related process-info. This requires plugin.
atop -s                             # Display scheduling-related process-info.
atop -v                             # Display various process-info like ppid, user/group, date/time.
atop -c                             # Display command line per process.

# Cool Tricks
# None

# TODO
# None
