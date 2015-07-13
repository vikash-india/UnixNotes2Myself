# Description: crontab - maintain crontab files for individual users (Vixie Cron)

# Notes
# 1. The crontab is the program used to install, deinstall or list the tables used to drive the cron(8) daemon in Vixie
#    Cron.
# 2. There is one file for each user's crontab under the directory /var/spool/cron/crontabs. Users are not allowed to
#    edit the files under this directory directly so that only syntactically correct crontabs will be written there.

# Common Examples
crontab -l
crontab -e

# Examples with details
crontab -l              # Use -l switch to display the crontab list for the logged in user.
sudo crontab -u mars -l # Use -u switch to display the crontab list for the user 'mars'.
crontab -e              # Use -e switch to edit the current crontab using the editor specified by the VISUAL or EDITOR
                        # environment variables or /usr/bin/editor. After exiting from the editor, the modified crontab
                        # will be installed automatically.
crontab -r              # Use the -r switch to remove the current crontab.
crontab -ir             # Use the -i switch to modify the -r option to prompt the user for a 'y/Y' response before
                        # actually removing the crontab.
cat /etc/cron.allow     # If the /etc/cron.allow file exists, one must be listed here in order to be allowed to use this
                        # command.
cat /etc/cron.deny      # 1. If the /etc/cron.allow file does not exist but the /etc/cron.deny file exists, then one
                        #    must NOT be listed in this file in order to be allowed to use this command.
                        # 2. If both files exist then /etc/cron.allow takes precedence. Which means that /etc/cron.deny
                        #    is not considered and your user must be listed in /etc/cron.allow in order to be able to
                        #    use the crontab.
                        # 3. If  neither  of  these files exists, then depending on site-dependent configuration
                        #    parameters, only the super user will be allowed to use this command, or all users will be
                        #    able to use this command.
                        # 4. Regardless  of  the existance of any of these files, the root administrative user is always
                        #    allowed to setup a crontab.  For standard Debian systems, all users may use this command.
# Cool Tricks
# None

# TODO
# None
