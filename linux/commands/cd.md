# Description: The cd Command

### Notes
* The cd command is used to change directory.

### Common Examples
```shell
cd
cd ..
```

### Examples With Details
```shell
cd                  # Moves to the home directory.
cd ~                # Same as above.
cd ..               # Moves to the parent directory.
cd -                # Moves the previous directory.
cd dilbert          # Moves to dilbert directory (Under present working directory). Uses RELATIVE path.
cd /user/dilbert    # Moves to dilbert directory. Uses ABSOLUTE path.
cd                  # Define CDPATH to define the base directory for cd command. Eg export CDPATH=/etc
```

### Cool Tricks
```shell
cd ../../../../     # Add alias .....="cd ../../../.." to navigate up the directory using consecutive dots. Use .....
cd..                # Add alias cd..="cd .." to make cd work inspite of missing space between cd and ..
```

### TODO
* Explore: cd has only two options, and neither of them are commonly used. The -P option instructs cd to use
  the physical directory structure instead of following symbolic links. The -L option forces symbolic links to
  be followed.
