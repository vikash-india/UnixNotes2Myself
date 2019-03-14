# Description: The apt-get Command

### Notes
* Check `apt` for a comparison.

### Common Examples
sudo apt-get --only-upgrade install openssl

### Examples with details
```shell
sudo apt-get update                 # Update the package database. Shows Hit, Ign and Get similar to apt.

sudo apt-get upgrade                # Upgrade packages
sudo apt-get upgrade [package]      # Upgrade a particular pacakge.
sudo apt-get dist-upgrade           # Look for the dependencies with the newer version and install it.
                                    # The dist-upgrade should be avoided on production machines.

apt-cache search [search term]      # Search for a particular search term. 
apt-cache [package] [search_term]   # Search for a particular search term within that package.
apt-cache showpkg [package]         # Show package information

sudo apt-get install [package_name] # Install a package.
sudo apt-get install [1] [2] [3]    # Install multiple packages.
sudo apt-get install [package] --no-upgrade     # Install a package, but don’t upgrade, if it is already installed.
sudo apt-get install [package] --only-upgrade   # Upgrade a package, but don't install, it is not already installed.
sudo apt-get install [package]=[version_number] # Install a specific version of the package. 

sudo apt-get remove [package]       # Remove installed package but leaves the configuration file intact.
sudo apt-get purge [package]        # Removes everything related to a package including the configuration files.

sudo apt-get clean                  # Clean the local repository of retrieved package files.
sudo apt-get autoclean              # Autoclean only removes those retrieved package files that have a newer version now 
                                    # and they won’t be used anymore
sudo apt-get autoremove             # Removes libs and packages that were installed automatically to satisfy the 
                                    # dependencies of an installed package.
```

### Cool Tricks
* None

### TODO
* None
