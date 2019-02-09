# Description: Install Apache

### Install Apache
```bash
sudo apt-get update
sudo apt-get install apache2
```

### Test Apache
- Open browser and visit `http://your_server_IP_address`

### Install Apache Modules
```bash
# Provides the documentation for the Apache 2 HTTP server.
sudo apt-get install apache2-doc

# Provides some add-on programs useful for any web server.
#   - ab (Apache benchmark tool)
#   - fcgistarter (Start a FastCGI program)
#   - logresolve (Resolve IP addresses to hostnames in logfiles)
#   - htpasswd (Manipulate basic authentication files)
#   - htdigest (Manipulate digest authentication files)
#   - htdbm (Manipulate basic authentication files in DBM format, using APR)
#   - htcacheclean (Clean up the disk cache)
#   - rotatelogs (Periodically stop writing to a logfile and open a new one)
#   - split-logfile (Split a single log including multiple vhosts)
#   - checkgid (Checks whether the caller can setgid to the specified group)
#   - check_forensic (Extract mod_log_forensic output from Apache log files)
#   - httxt2dbm (Generate dbm files for use with RewriteMap)
sudo apt-get install apache2-utils
```

### List of Directories Touched by Apache2 Installation
```bash
# This will list all the paths that has been touched by installation of apache2
sudo find / -name apache2
``` 