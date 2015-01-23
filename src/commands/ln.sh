# Description: ln - make links between files

# Notes
# 1. Hardlinks
#    - A hardlink is a directory entry (ie a file) pointing to the same inode.
#    - If the original file is RENAMED/MOVED, the hardlink will still point to the same file as the inode has
#      not changed.
#    - If the original file is DELETED, the hardlink will continue to point to the old inode and the file
#      content can be accessed using this hardlink.
#    - If the original file is DELETED and another one is CREATED again with the same name, the hard link will
#      NOT point to this new version as the inode has changed.
#    - Hardlinks CANNOT span filesystems.
#    - Unix will not allow any user (even root) to create hard link for a directory.
#    - Hardlinks does not differentiate between the original file and its links. All are equal. Its more of a
#      reference to an object and is a very low level concept.
#    - Every directory has 2 hardlinks, namely . and ..
# 2. Symbolic Links or Symlinks or Soft Links:
#    - Symlink is a pointer to a file. It actually points to another path (ie a file name). Symlinks resolves
#      the name of the file each time it's accessed.
#    - If the file is RENAMED/MOVED, the symlink will not follow.
#    - If the existing file is replaced with another one with the same name, the symlink will point to the new
#      file.
#    - Symlinks CAN span filesystems.
#    - Symlinks to directories can also be created.
#    - Symlinks makes a very clear distinction between the actual file and the symlink. Symlinks stores no
#      other info beside the path to the file that it points to.existing

# Common Examples
ln -s path/to/original/file /path/to/symlink/file

# Examples with details
ln path/to/file                 # Creates a hardlink to file.txt in the current directory.
ln -s path/to/file              # The -s switch creates a symbolic link to the file.txt
ln -s path/to/directory         # Symlinks can also be created for a directory.
ln -s path/to/original/file /path/to/symlink/file  # Create Hardlinks/symlinks with a name.
ln -s path/to/dir1/* -t .       # Create symlinks in the current directory for all files in dir1.

rm path/to/the/soft/link/file   # Hardlinks/Symlinks can be deleted or renamed just like any ordinary files.

# Cool Tricks
# 1. Can be used to checkin same file in different repository in git
# 2. Can be used to increase the partition size virutally by creating symlinks to another partition with space.

# TODO
# None
