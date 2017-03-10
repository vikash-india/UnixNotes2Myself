# Description: Monitor and Log Temperature of Raspberry Pi

### Steps 
1. Write a python script to do the following
    - Check temperature at regular interval (say every 60 seconds).
    - Log the temperature with date and time to a file.

2. Check the scripts
    - Check 005_b_temperature_monitor_with_comments.py for a script with explanation.
    - Check 005_c_temperature_monitor.py for a minified version of the same script.

3. Copy the files to raspberry pi
```bash
scp 005_c_temperature_monitor.py [hostname]:scripts/temperature_monitor/monitor.py
```

4. Add a crontab expression to call this script just after bootup.
```bash
crontab -e
@reboot python /home/pi/scripts/temperature_monitor/monitor.py
```

### TODO
* None
