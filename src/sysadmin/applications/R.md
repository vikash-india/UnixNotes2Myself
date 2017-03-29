# Description: R Administration on Ubuntu

### Install Ubuntu Version of R (This might NOT be LATEST)
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

### Install RStudio
1. Download installer from [www.rsudio.com](https://www.rstudio.com/products/rstudio/download/)
2. Open with Software Install and install RStudio.

### Install R Packages
```
# Install igraph for graph visualisations.
R Studio - Tools - Install Packages - igraph
# Note: The igraph installation might fail. Install the following dependency.
sudo apt-get install r-cran-plyr
sudo apt-get install r-cran-reshape2
sudo apt-get install r-cran-ggplot2
```
