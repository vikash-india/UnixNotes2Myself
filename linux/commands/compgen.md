# Description: The compgen Command

### Notes
* The compgen is a GNU Bash builtin that shows all possible completions.
* The compgen command is used when a command completion is required in a script.
* The compgen works hand in hand with the complete builtin.

### Common Examples
```shell
compgen -u
compgen -g
```

### Examples With Details
```shell
compgen -c                              # Get a full list of all commands.
compgen -c | grep apr                   # Get command completion for apropos from the string apr.

compgen -d                              # Get a full list of directory.
compgen -d /etc/                        # Get a list of directory under /etc.

compgen -v                              # Get all variable names
compgen -A binding                      # Get all commands that have keybindings

compgen -u                              # Display all users
compgen -g                              # Display all groups

help compgen                            # Get help for shell builtin command compgen
```

### Cool Tricks
* None

### TODO
* None
