# Description: cron - daemon to execute scheduled commands (Vixie Cron)

# Notes
#  1. Structure of cron expressions: m h dom mon dow command
      ╔═════════╦════════════════════════════════════════════════════════════════════════╗
      ║ Option  ║                              Description                               ║
      ╠═════════╬════════════════════════════════════════════════════════════════════════╣
      ║ m       ║ Minutes. Values can be 0-59.                                           ║
      ║ h       ║ Hours in 24-Hour clock. Values can be 0-23.                            ║
      ║ dom     ║ Day of the Month. Values can be 1-31.                                  ║
      ║ mon     ║ Month. Values can be 1-12 or Jan-Dec.                                  ║
      ║ dow     ║ Day of the week. Values can be 0-6 or Sun-Sat.                         ║
      ║         ║ Under dow, both 0 and 7 are considered Sunday.                         ║
      ║ command ║ The command to run. This can contain spaces or point to a bash script. ║
      ╚═════════╩════════════════════════════════════════════════════════════════════════╝

#  2. Special characters
      ╔════════════╦════════════════════════════════════════════════════════════════════════════╗
      ║ Character  ║                                Description                                 ║
      ╠════════════╬════════════════════════════════════════════════════════════════════════════╣
      ║ * (Astrix) ║ Represents wildcards for any field or first-last.                          ║
      ║            ║ Examples: * for m = 0-59, * for mon = 1-31 etc.                            ║
      ║ - (Hyphen) ║ Represents range which are inclusive of each point.                        ║
      ║ , (Comma)  ║ Represents a set of numbers (or ranges) separated by commas.               ║
      ║            ║ Examples: "1,2,5,9" or "0-4,8-12" etc.                                     ║
      ║ / (Slash)  ║ Represents the step values. Can be used for ranges.                        ║
      ║            ║ Examples: 0-23/2 is same as */2 is same as 0,2,4,6,8,10,12,14,16,18,20,22. ║
      ║ Names      ║ First 3 letters of Months or Days of Week can be used.                     ║
      ╚════════════╩════════════════════════════════════════════════════════════════════════════╝

#  3. Special String
      ╔═══════════╦════════════════════════════════╗
      ║  String   ║            Meaning             ║
      ╠═══════════╬════════════════════════════════╣
      ║ @reboot   ║ Run once, at startup.          ║
      ║ @yearly   ║ Run once a year, "0 0 1 1 *".  ║
      ║ @annually ║ (same as @yearly)              ║
      ║ @monthly  ║ Run once a month, "0 0 1 * *". ║
      ║ @weekly   ║ Run once a week, "0 0 * * 0".  ║
      ║ @daily    ║ Run once a day, "0 0 * * *".   ║
      ║ @midnight ║ (same as @daily)               ║
      ║ @hourly   ║ Run once an hour, "0 * * * *". ║
      ╚═══════════╩════════════════════════════════╝

#  4. The command (the rest of the line upto a newline or % character) specifies the command to be run.
#  5. Command will be executed by /bin/sh or by the shell specified in the SHELL variable of the crontab file.
#  6. Percent-signs (%) in the command, unless escaped with backslash (\), will be changed into newline characters,
#     and all data after the first % will be sent to the command as standard input.
#  7. When cron job is run from the users crontab it is executed as that user. It does not however source any files in
#     the users home directory like their .cshrc or .bashrc or any other file. If you need cron to source (read) any
#     file that your script will need you should do it from the script cron is calling. Setting paths, sourcing files,
#     setting environment variables, etc.
#  8. If the users account has a crontab but no useable shell in /etc/passwd then the cronjob will not run. You will
#     have to give the account a shell for the crontab to run.
#  9. If your cronjobs are not running check if the cron deamon is running. Then remember to check /etc/cron.allow and
#     /etc/cron.deny files. If they exist then the user you want to be able to run jobs must be in /etc/cron.allow. You
#     also might want to check if the /etc/security/access.conf file exists. You might need to add your user in there.
# 10. Crontab is not parsed for environmental substitutions. You can not use things like $PATH, $HOME, or ~/sbin. You
#     can set things like MAILTO= or PATH= and other environment variables the /bin/sh shell uses.
# 11. Cron does not deal with seconds so you can't have cronjob's going off in any time period dealing with seconds.
#     Like a cronjob going off every 30 seconds.
# 12. You can not use % in the command area. They will need to be escaped and if used with a command like the date
#     command you can put it in backticks. Ex. `date +\%Y-\%m-\%d`.

# Common Examples
00 08 * * *              /home/dilbert/Personal/Workspace/ShellScriptProject/src/commands/cron_sample.sh

# Examples with details
# Note: Type crontab -e and enter these details
* * * * *                echo “Runs after EVERY MINUTES”
10 * * * *               echo “Runs at 10 min past every hour, every day”
22 7 * * *               echo “Runs daily at 7:22 am”
22 20 * * *              echo “Runs daily at 8:22 pm”
00 4 * * 0               echo “Runs at 4 am every Sunday”
4 * * Sun                echo “Same as above. Runs at 4 am every Sunday”
42 4 1 * *               echo “Runs at 4:42 AM every 1st of the month”
01 * 19 07 *             echo “Runs hourly on the 19th of July”
* 17 * * 1-5             echo "Use - to specify range. Runs at 5pm only on weekdays"
59 17 1,10,20,30 * *     echo "Use ‘,’ to specify intervals instead of creating multiple cron entries. Runs on the 1st, 10th, 20th & 30th of each month, at 17:59 PM"
59 */6 * * *             echo "Use ‘/’ to divide the day into chunks. Runs every 4 hours (24 / 6 = 4)"
*/20 9-17 * * *          echo "Use chunks of time and a range together. Runs every 20 mins between the hours or 9 AM and 5 PM"

# 11:30 pm on Mon-Fri
30 11 * * Mon-Fri /home/dilbert/Personal/Workspace/ShellScriptProject/src/commands/cron_sample.sh

# Cool Tricks
# 1. Set up a cron script
#    Step 1: crontab -e
#    Step 2: Add the following entry to the file, save and quit to run a script every 1 minute
* * * * * /home/dilbert/cron_sample.sh
#    Step 3: Watch the output of the cron_sample.sh

# 2. Sync System Time: The cron command is dependent on time. For accurate results, setup the system to sync its clock
#    via NTP. If NTP sync is not configured, get up to date temporarily using the following command (As ROOT),
sudo ntpdate pool.ntp.org

# 3. Selecting Default Editor: First time when crontab -e is run, it will show an option to choose an editor. Editor
#    can be changed later on using the following commmand,
select-editor

# 4. Editing Cron: There are more than one way to edit the cron config files; however many of them require a service
#    restart. Here is a method to add a task to cron without having to restart the deamon. IMPORTANT: You will need to
#    login to the user you wish to execute the command and type.
crontab -e

# TODO
# None
