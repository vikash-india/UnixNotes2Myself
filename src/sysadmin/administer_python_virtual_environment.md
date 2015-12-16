# Description: Python Virtual Environments

### Install and Setup Python Virtual Environment
```
sudo apt-get install python-pip                 # Install pip (If not already installed)

sudo pip install virtualenv                     # Install Virtual Environment
sudo pip install virtualenvwrapper              # Install Virtual Environment Wrapper

# Create Virtualenv aliases or copy the existing aliases from .bashrc
```
# Virtualenv installation details for python
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Aliases
alias v='workon'
alias v.deactivate='deactivate'
alias v.make='mkvirtualenv --no-site-packages'
alias v.make_withsitepackages='mkvirtualenv'
alias v.remove='rmvirtualenv'
alias v.switch='workon'
alias v.cd='cdvirtualenv'
alias v.cdsitepackages='cdsitepackages'
alias v.lssitepackages='lssitepackages'
alias v.add2virtualenv='add2virtualenv'
```
* Source: http://blog.doughellmann.com/2010/01/virtualenvwrapper-tips-and-tricks.html

### Common Virtual Environment Commands Using Aliases
```
v.make project1                                 # Create a virtual environment 'perfios'
v project1                                      # Activate perfios environment
pip install -r  /path/to/requirements/file      # Install the list of required python modules
```
