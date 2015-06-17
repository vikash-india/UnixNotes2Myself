# Description: alias - Abbreviate a regularly used command, or add default arguments to an existing system command.

# Notes
# 1. The alias command is built into most of the shells on Linux systems and is a way of customising a shell.
# 2. Aliases are recognised only by the shell in which they are created, and apply only for the user who created it.
# 3. The alias name and the replacement text can contain any valid shell input except for the equals sign (=).
# 4. Aliases can be added to .bashrc (for bash shell) file to be made permanent.
# 5. Remove aliases
#    - Aliases can be removed using the unalias command: unalias [-a] name(s)
#    - Overwrite an existing alias by using the alias command to create a new alias with the same name.
#    - A third way is to delete the alias from the appropriate configuration file using a text editor.

# Common Examples
alias
alias wd
alias wd="cd /home/dilbert/work"
\ls                                 # \<alias-name> to disable alias temporarily to call a core command.

# Examples with details
alias wd="cd /home/dilbert/work"    # Define an alias for a regularly used system command.
alias ls="ls -l --color=auto"       # Define an alias with the same name as core command to add default arguments.
alias pdw="pwd"                     # Define an alias to correct common misspellings of commands.
alias vi='gvim'                     # Define an alias to standardise name of a command across multiple OS.
alias rm="rm -i"                    # Define an alias to increase the safety of the system by making it interactive.
alias rm='rm -i'                    # Double or single quotes can be used to create an alias.
alias lh='cd /home/dilbert; ls'     # Multiple commands can be included in a single alias using semicolons.
alias p="pwd"; l="ls -al"           # Multiple aliases can be created simultaneously.
alias eb='wd; vim .bashrc'          # Alias definition may include calls to other aliases also.
alias                               # Prints all alias in the form of name=value.
alias -p                            # Same as above.
alias wd                            # Prints details of the alias "wd".
alias ls -a /etc                    # Call to aliases can include other switches and arguments.
\ls                                 # Disable alias temporarily to call a core command. Use a backslash without spaces.

# Cool Tricks
# 1. Quicker move to move to parent
alias ..='cd ..'
alias ...='cd ../..'

# 2. Add the output of unix command date (in DD-MM-YYYY) as part of an alias definition.
alias logs="tail -f /home/dilbert/logs/error.`date +%d-%m-%Y`.logs`"

# TODO
# None
