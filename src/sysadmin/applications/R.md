# Description: R Administration on Ubuntu

### Install Ubuntu Version of R (Probably Older Version)
```
sudo apt-get install r-base
```

### Install Latest Stable Version of R
```bash
# Add the Trusted GPG Key to Ubuntu Keyring
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

# Add the repository
sudo add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'

# Update to Include Package Manifest from the new Repository
sudo apt-get update

# Install R
sudo apt-get install r-base
```

### Install RStudio: Using Software Center
1. Download installer from [www.rsudio.com](https://www.rstudio.com/products/rstudio/download/)
2. Open with Software Install and install RStudio.

### Install RStudio: Using Commandline
```bash
sudo  dpkg -i '/path/to/rstudio-0.99.902-amd64.deb'
```

### Uninstall RStudio
```
sudo apt-get remove rstudio
```
