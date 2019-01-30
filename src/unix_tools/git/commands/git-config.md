# Description: The git-config Command

### Note
* The git-config command is used to set configuration variables that control the git.
* There are 3 places where these variables can be stored.
    - System Config: All users & all repositories ie global to a system.
    - Global Config: One User & All repositories.
    - Single Repository Config: One User & One repository.

### Common Examples
```
git config --list
git config --global user.name "Dilbert"
git config --global user.email "dilbert@example.com"
git config --global color.ui true
```

### Detailed Examples
```
git config --system                                             # Writes to global git config file /etc/gitconfig. This
                                                                # is global to a system - All users & all repositories.
git config --global                                             # Write to user specific git config file ~/.gitconfig.
                                                                # This is global for a specific user - One user & all
                                                                # repositories.
git config                                                      # Without any switches writes to single repository
                                                                # specific git config file .git/config. This overrides
                                                                # the previous variables.
git config --global user.name "Dilbert"                         # Set user name globally.
git config --global user.email "dilbert@example.com"            # Set user email globally.
git config --global core.editor /file/path/to/vim               # Set editor globally.
git config --global merge.tool /file/path/to/meld               # Set merge tool globally.
git config --global color.ui true                               # Use color codes to display output from different git
                                                                # tools.
git config --list                                               # List all git config variables. You may see keys more
                                                                # than once, because Git reads the same key from
                                                                # different files mentioned above. Git uses the last
                                                                # value for each unique key it sees.
git config user.name                                            # Check what Git thinks a specific key’s value is by
                                                                # typing git config {key}
git config --global credential.helper cache                     # Set git to use the credential memory cache. By
                                                                # default, this remember password for 15 minutes
git config --global credential.helper 'cache --timeout=3600'    # Set the cache to timeout after 1 hour (setting is in
                                                                # seconds)
git config --global alias.co checkout                           # Configures co as the alias for checkout.
git config --global alias.last 'log -1 HEAD'                    # Alias to see the last commit easily.
```

### TODO
* None
