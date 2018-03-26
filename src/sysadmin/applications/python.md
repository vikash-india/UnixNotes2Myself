# Description: Python 2.7 Administration on Ubuntu

## Install Python2.7
```bash
# Check the currently installed versions
type python3 python2.7 python3.5 python2 python

# Install Python 2.7
sudo apt-get install python2.7

# Installing Pip creates the symlinks for python, python2, python3 etc.
sudo apt-get install python-pip

# Verify the currently installed versions again
type python3 python2.7 python3.5 python2 python
```

### Setup Python Alternatives to Point to Python3 on Ubuntu 16.04
```bash
# Update the alternaitves
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1

# Configure Python
sudo update-alternatives --config python
```