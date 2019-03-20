# Description: The ssh Command

### Notes
* The ssh command is an Open SSH client.
* The ssh is an SSH client program for logging into a remote machine and for executing commands on a remote machine.
* It is intended to replace rlogin and rsh, and provide secure encrypted communications between two untrusted hosts
  over an insecure network.
* Steps for setting up an SSH client
    - Generate key pairs using ssh-keygen.
    - Setup local host (which runs SSH Client).
    - Setup remote host (which runs SSH Server).

### Common Examples
```shell
ssh dilbert@jupiter
ssh jupiter
```

### Examples With Details
```shell
ssh dilbert@jupiter                 # ssh to the remote host jupiter using the username dilbert. Username is Optional.
ssh jupiter                         # ssh to the remote host jupiter using the configuration file ~/.ssh/config.
ssh -2 jupiter                      # Default. Forces ssh to try protocol version 2 only. More secure than version 1.
ssh -6 jupiter                      # Forces ssh to use IPv6 addresses only. Use -4 for IPv4.
exit                                # Terminate ssh sessions from the server end.
Ctrl-d                              # Same as above.
logout                              # Same as above.
(RETURN)(RETURN)~.                  # Terminate SSH connection from the client end instead of the server end. This is
                                    # useful if connectivity is lost with the machine and there is no way of ending the
                                    # shell session.
ssh -F /path/to/config jupiter      # Specify SSH config file.
ssh -i /path/to/ssh-key jupiter     # Specify SSH private key file.
```

### Cool Tricks
* None

### TODO
* None
