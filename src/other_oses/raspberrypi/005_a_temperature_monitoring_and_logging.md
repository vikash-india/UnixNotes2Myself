# Description: Monitor and Log Temperature of Raspberry Pi

### Steps
1. Write a python script to do the following
    - Check temperature.
    - Log the temperature with date and timestamp to a file.

2. The Scripts
    - Check 005_b_temperature_monitor_with_comments.py for a script with explanation.
    - Check 005_c_temperature_monitor.py for a minified version of the same script.

3. Copy the files to raspberry pi and setup alias
```bash
# Transfer the files
scp 005_c_temperature_monitor.py [hostname]:monitor.py

# SSH to Raspberry Pi

# Move the files
mkdir ~/bin/temperature_monitor
mv ~/monitor.py ~/bin/temperature_monitor
chmod +x ~/bin/temperature_monitor/monitor.py

# Add the following to the .bashrc
export TEMPERATURE_LOG=/home/pi/bin/temperature_monitor/temperature.log
alias vtl='vim $TEMPERATURE_LOG'
```

4. Add a crontab expression to call this script just after bootup.
```bash
sudo crontab -e
*/1 * * * * python /home/pi/bin/temperature_monitor/monitor.py

# Important
# - Use sudo before crontab to install as root.
# - Modify */1 to */10 if the script should run every 10 minutes instead of every minute.
```

5. Visualise the logged temperature using Python, R or Excel.

### TODO
* None
