# Description: Vim Installation

### Note
* Vim Vs Gvim
    - GVim is Vim with a built-in GUI. The plain Vim needs a terminal emulator like GNOME Terminal to run.
    - GVim with the built-in GUI provides several extra features.
    - On many systems, gvim is same as `vim -g`.
* Vim-gnome Vs Vim-gtk
    - The gvim application is packaged in two different ways - vim-gnome and vim-gtk. Both packages provide the same 
      application, but compiled with different dependencies (e.g. vim-gnome depends on libgnome2). 
    - Vim-gtk is important for distribution like Kubuntu (or some lightweight desktop environment) where one would not 
      like to install GNOME libraries. 

### Install Vim on Ubuntu
```
sudo apt-get install vim
```

### Install Gvim on Ubuntu
```
# Vim with Full Gnome Libraries
sudo apt-get install vim-gnome

# Vim with Basic Libraries
sudo apt-get install vim-gtk
```

### Cool Tricks
* None

### TODO
* None
