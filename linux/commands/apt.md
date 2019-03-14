# Description: The apt Command

### Notes
* The `apt` command was introduced in Ubuntu 16.04.
* The `apt` (Advanced Package Tool) is the command line tool to interact with the packaging system.
* The `apt` command is easier way to handle packaging. It can be used to find and install new packages, upgrade 
  packages, remove the packages etc.
* The `apt` command consists some of the most widely used features from `apt-get` and `apt-cache` leaving aside obscure 
  and seldom used features. It can also manage `apt.conf` file.
* The `apt` is a subset of `apt-get` and `apt-cache` commands providing necessary commands for package management.
* The `apt-get` won’t be deprecated. 

### The apg Vs apt-get
| The apt command	| The apt-get Command	| Description of the command                                    |
|-------------------|-----------------------|---------------------------------------------------------------|
| apt install	    | apt-get install	    | Installs a package.                                           |
| apt remove	    | apt-get remove	    | Removes a package.                                            |
| apt purge	        | apt-get purge	        | Removes package with configuration.                           |
| apt update	    | apt-get update	    | Refreshes repository index.                                   |
| apt upgrade	    | apt-get upgrade	    | Upgrades all upgradable packages.                             |
| apt autoremove	| apt-get autoremove	| Removes unwanted packages.                                    |
| apt full-upgrade  | apt-get dist-upgrade  | Upgrades packages with auto-handling of dependencies.         |
| apt search	    | apt-cache search	    | Searches for the program.                                     |
| apt show	        | apt-cache show	    | Shows package details.                                        |
| apt list	        | -	                    | Lists packages with criteria (installed, upgradable etc).     |
| edit-sources      | -	                    | Edits sources list                                            |

### Common Examples
```shell
sudo apt update
sudo apt upgrade
sudo apt update && sudo apt upgrade -y
```

### Examples With Details
```shell
sudo apt update                 # Update the database of available packages on which the apt command works.     
                                # 1. Hit: There is no change in package version from the previous version.
                                # 2. Ign: The package is being ignored. Either the package is way too recent that it  
                                #    doesn’t even bother to check or there was an error in retrieving the file but error  
                                     was trivial and thus it is being ignored. Don’t worry, this is not an error.
                                # 3. Get: There is a new version available. It will download the information about the  
                                #    version (not the package itself). The download information (size in kb) with the 
                                #    ‘get’ line in the screenshot above.          

sudo apt upgrade                # Upgrade existing packages without removing the packages.
sudo apt full-upgrade           # Similar to upgrade except that if system upgrade needs the removal of a package 
                                # already installed on the system, it will do that.

sudo apt install [package]      # Install a particular pacakge. Auto-completion is available.
sudo apt install [1] [2] [3]    # Install multiple packages 1, 2 and 3.
sudo apt install [package] --no-upgrade     # Install a package, but don’t upgrade, if it is already installed.
sudo apt install [package] --only-upgrade   # Upgrade a package, but don't install, it is not already installed.
sudo apt install [package]=[version_number] # Install a specific version of an application.

sudo apt remove [package]       # Remove installed package but leaves the configuration file intact.
sudo apt purge [package]        # Removes everything related to a package including the configuration files.

apt search [search term]        # Find all the packages containing the search term.
apt show [package_name]         # Show information about the given package(s) like its dependencies, installation and 
                                # download size, different sources the package is available from.

apt list --upgradeable          # See all the packages that have a newer version ready to be upgraded.
apt list --installed            # See all the installed packages
apt list --all-versions         # List all the packages available for your system.

sudo apt autoremove             # Removes libs and packages that were installed automatically to satisfy the 
                                # dependencies of an installed package.
```

### Cool Tricks
* None

### TODO
* None
