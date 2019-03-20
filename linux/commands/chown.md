# Description: The chown Command

### Notes
* The chown command is used to change file owner and group.

### Common Examples
```shell
chown -v --reference=referencefile filename
chown -Rv dilbert:employee dirname
chown -v dilbert:employee filename
```

### Examples With Details
```shell
chown dilbert filename                      # Change the owner of the file to dilbert.
chown :employee filename                    # Change the group of the file to employee.
chown dilbert:employee filename             # Change owner to dilbert and the group to employee.
chown -R dilbert:employee path/to/dirname   # The -R or --recursive switch changes ownership recursively.
chown -R --preserve-root dilbert dir        # Fail to operate recursively on '/' of the files owned by root.
chown -v dilbert:employee filename          # Display verbose output.
chown -c dilbert:employee filename          # Similar to verbose but report only when a change is made.
```

### Cool Tricks
* Change the ownership of filename to dilbert:employee only if it is owned by 'catbert' in 'hr' group.
```shell
chown --from=catbert:hr dilbert:employee filename
```
* Copy the ownership details from 'referencefile' to 'filename'.
```shell
chown --reference=referencefile filename    # Change the ownership of filename using 'reference file' as reference.
```

### TODO
* Explore man pages again on chown works on symbolic links.
