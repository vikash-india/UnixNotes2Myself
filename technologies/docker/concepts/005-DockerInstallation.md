# Description: Docker Installation

### Types of Docker Installation
* Docker on Linux
    - Install through default package manager.
    - Install through script.
    - Install through docker hub.
    - Install manually using a debian package.
* Docker for Windows
* Docker for Mac
* Docker for AWS/Azure/Google

### Docker Installation on Ubuntu Package Manager
* Do not install through default sudo apt-get install docker as it is a couple of years behind.

### Docker Installation on Linux Using Script
* The script is available at `https://get.docker.com/`
* This will install the edge version of docker which comes out monthly.
```
# Install Edge Version of Docker
curl -sSL https://get.docker.com/ | bash

# Add the default user to docker group
sudo usermod -aG docker dilbert
```

### Docker Installation on Linux Using Docker Hub
* Check Docker Reference for latest Docker installation on Ubuntu.
```
# Update the apt package index
sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


# Search for the last 8 characters of the fingerprint
# - This will verify that the key with the fingerprint 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88 is installed
sudo apt-key fingerprint 0EBFCD88


# Set up the stable repository
# - To add the nightly or test repository, add the word nightly or test (or both) after the word stable
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the apt package index.
sudo apt-get update

# Install the latest version of Docker CE and containerd
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Add the default user to docker group
sudo usermod -aG docker dilbert

# Logout and login for the group to take affect.

# Verify that Docker CE is installed correctly by running the hello-world image.
sudo docker run hello-world
```

### Manual Docker Installation Using Debian Package
* Visit https://download.docker.com/linux/ubuntu/dists/ and choose the Ubuntu Version.
* Download the debian package and install it manually.

### Docker Installation on Linux Using docker-machine
* TODO

### TODO
* None
