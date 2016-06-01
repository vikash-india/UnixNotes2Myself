# Description: smartctl - Control and Monitor Utility for SMART Disks

# Notes
# 1. The Gnome Disks app is a graphical front ends of this tool. GSsmartControl is another alternative.
# 2. Open Disks app. Click on /dev/sda - Settings - Smart Data & Self-Tests.
# 3. Replace /dev/sda with appropriate path for external hard disks.

# Common Examples
sudo smartctl -a /dev/sda
sudo smartctl -t short /dev/sda
sudo smartctl -t long /dev/sda
sudo smartctl -l selftest /dev/sda
sudo smartctl -X

# Examples with details
sudo apt-get install smartmontools          # Install smartctl

sudo smartctl -i /dev/sda                   # Check if your drive is actually SMART type
sudo smartctl -s on /dev/sda                # Enable SMART service. It does nothing if it is already enabled.

sudo smartctl -a /dev/sda                   # Print drive health data, attributes, and available test results.
sudo smartctl -H /dev/sda                   # Print ONLY health data. Backup if errors are reported.

sudo smartctl -c /dev/sda                   # Reports the kinds of tests that can be performed apart from other statistics.
                                            # This shows the options for short and long tests.

sudo smartctl -t short /dev/sda             # Begin a new short (Upto a few minutes) test in background.
                                            # The htop command will show smartctl running in background.
sudo smartctl -t long /dev/sda              # Begin a new long (Upto many hours) test in background.
smartctl -X                                 # Use smartctl -X to abort test.
sudo smartctl -l selftest /dev/sda          # Display the test result after the time indicated by the above command.

# Cool Tricks
# None

# TODO
# None
