# Description: The dpkg Command

### Notes
* The dpkg is a package manager for Debian.
* The general syntax is `dpkg ACTIONS` or `dpkg [options] filename`.

### Common Examples
```shell
dpkg -i google-chrome-stable_current_amd64.deb
dpkg -r google-chrome-stable_current_amd64.deb
```

### Examples With Details
#### Install .deb files from command line.
Steps are involved in the installation process
1. Extract the control files of the new package.
2. If  another version of the same package was installed before the new installation, execute prerm script of the old 
   package.
3. Run preinst script, if provided by the package.
4. Unpack the new files, and at the same time back  up  the  old files, so that if something goes wrong, they can be 
   restored.
5. If  another version of the same package was installed before the new installation, execute the postrm script of the 
   old pack? age.  Note that this script is executed after the preinst script of the new package, because new files are 
   written  at the  same time old files are removed.
6. Configure the package. See --configure for detailed informa? tion about how this is done.
```shell
dpkg -i [package-name]                      
dpkg -i google-chrome-stable_current_amd64.deb  
```

#### Remove an already installed package.
Removing of a package consists of the following steps
1. Run prerm script
2. Remove the installed files
3. Run postrm script
```shell
dpkg -r [package-name]                  
dpkg -r google-chrome-stable_current_amd64.deb                  
```

#### Configure an already unpacked package
Configuring consists of the following steps
1. Unpack  the  conffiles, and at the same time back up the old conffiles, so that they can be restored if something 
   goes wrong.
2. Run postinst script, if provided by the package.
```shell
dpkg --configure [package-name]     
```

#### Purge a package
* Some configuration files might be unknown to dpkg because they are created and handled separately through  the  
  configuration  scripts.  In  that case, dpkg won't remove them by itself, but the package's postrm script (which is 
  called by  dpkg),  has to take care of their removal during purge. Of course, this only applies to files in system 
  directories, not configuration  files written to individual users' home directories.
* Purging of a package consists of the following steps
    - Remove the package, if not already removed. 
    - Run postrm script.
```shell
dpkg -P [package-name]              # Removes everything, including conffiles.
```

#### Other Commands
```shell
dpkg -l                             # List all installed packages in the system.
dpkg --contents [package name]      # Use  --contents flag to list contents of a package.
dpkg --unpack [package-name]        # Unpack the package, but not configure it.
dpkg -s [package-name]              # Check if a package is installed or not.
dpkg --print-architecture           # Print architecture of packages dpkg installs.
```

### Cool Tricks
* None

### TODO
* Read about dpkg Vs apt.
* How to create a package that can be installed using dpkg.
