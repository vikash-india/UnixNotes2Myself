# Description: The passwd Command

### Notes
* The passwd command changes user password.

### Common Examples
```shell
passwd
```

### Examples With Details
```shell
passwd                          # Updates the user password.
passwd -n10 -x365 -w5 dilbert   # Change password for the user dilbert.
                                # The -w switch shows password expiry warning 5 days before the password expires.
                                # The -x switch specifies the password lifetime in days.
                                # The -n switch specifies the minimum password lifetime in days.
passwd x-1 dilbert              # Password ageing turned off as maximum password lifetime for password expiry is -1.
passwd -n10 x5 panther          # Password ageing turned off as minimum password lifetime is greater than maximum
                                # password lifetime for password expiry.
passwd -S                       # Show short info about current user password with other info.
```

### Cool Tricks
* None

### TODO
* Explore man pages for setting or resetting other users password.
