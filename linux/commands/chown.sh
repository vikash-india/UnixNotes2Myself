# Description:  chown - change file owner and group

# Notes
# None

# Common Examples
chown -v --reference=referencefile filename
chown -Rv dilbert:employee dirname
chown -v dilbert:employee filename

# Examples with details
chown dilbert filename                      # Change the owner of the file to dilbert.
chown :employee filename                    # Change the group of the file to employee.
chown dilbert:employee filename             # Change owner to dilbert and the group to employee.
chown -R dilbert:employee path/to/dirname   # The -R or --recursive switch changes ownership recursively.
chown -R --preserve-root dilbert dir        # Fail to operate recursively on '/' of the files owned by root.
chown -v dilbert:employee filename          # Display verbose output.
chown -c dilbert:employee filename          # Similar to verbose but report only when a change is made.

# Cool Tricks

# 1. Change the ownership of filename to dilbert:employee only if it is owned by 'catbert' in 'hr' group.
chown --from=catbert:hr dilbert:employee filename

# 2. Copy the ownership details from 'referencefile' to 'filename'.
chown --reference=referencefile filename    # Change the ownership of filename using 'reference file' as reference.

# TODO
# 1. Explore man pages again on chown works on symbolic links.
