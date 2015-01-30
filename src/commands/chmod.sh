# Description: chmod - change file mode bits

# Notes
# 1. The general syntax of this command is as follows
    chmod [Users][Operator][File Mode] filename

# 2. Users: The ugoa string controls which users get access to the file. If none of these are given, then permission
#    is given to all users (a).
            ╔═══════╦══════════════════════════════════════════╗
            ║ Users ║               Description                ║
            ╠═══════╬══════════════════════════════════════════╣
            ║ u     ║ The user who owns the file.              ║
            ║ g     ║ The group who owns the file.             ║
            ║ o     ║ The other users NOT in the file's group. ║
            ║ a     ║ All users.                               ║
            ╚═══════╩══════════════════════════════════════════╝

# 3. Operators
            ╔══════════╦═════════════════════════════════════════════════════════════╗
            ║ Operator ║                         Description                         ║
            ╠══════════╬═════════════════════════════════════════════════════════════╣
            ║ +        ║ Add file mode bits to the existing file mode bits.          ║
            ║ -        ║ Remove file mode bits from the existing file mode bits.     ║
            ║ =        ║ Sets file mode bits and remove any existing file mode bits. ║
            ╚══════════╩═════════════════════════════════════════════════════════════╝

# 4. File Modes
            ╔═════════════╦══════════════╦═════════════════════════════════════╗
            ║ String Mode ║ Numeric Mode ║             Description             ║
            ╠═════════════╬══════════════╬═════════════════════════════════════╣
            ║ r           ║            4 ║ Read                                ║
            ║ w           ║            2 ║ Write                               ║
            ║ x           ║            1 ║ Execute (or search for directories) ║
            ╚═════════════╩══════════════╩═════════════════════════════════════╝

# 5. Breakup of file mode 'rwxr-xr--'
            ╔══════════════════╦══════╦═══════╦════════╗
            ║ User Permissions ║ User ║ Group ║ Others ║
            ╠══════════════════╬══════╬═══════╬════════╣
            ║ File Mode String ║ rwx  ║ r-x   ║ r--    ║
            ║ File Mode Binary ║ 111  ║ 101   ║ 100    ║
            ║ File Mode Octal  ║ 7    ║ 5     ║ 4      ║
            ╚══════════════════╩══════╩═══════╩════════╝

# 6. File Mode Reference Chart
            ╔════════╦════════╦═══════╦═════════════════════════════════╗
            ║ String ║ Binary ║ Octal ║           Description           ║
            ╠════════╬════════╬═══════╬═════════════════════════════════╣
            ║ ---    ║    000 ║     0 ║ No Read + No Write + No Execute ║
            ║ --x    ║    001 ║     1 ║ Execute                         ║
            ║ -w-    ║    010 ║     2 ║ Write                           ║
            ║ -wx    ║    011 ║     3 ║ Write + Execute                 ║
            ║ r--    ║    100 ║     4 ║ Read                            ║
            ║ r-x    ║    101 ║     5 ║ Read + Execute                  ║
            ║ rw-    ║    110 ║     6 ║ Read + Write                    ║
            ║ rwx    ║    111 ║     7 ║ Read + Write + Execute          ║
            ╚════════╩════════╩═══════╩═════════════════════════════════╝

# 7. The chmod never changes the permissions of symbolic links but this is not a problem since the permissions of
#    symbolic links are never used. However chmod changes the permissions of the pointed-to file.

# Common Examples
chmod --reference=referencefile path/to/filename
chmod +x path/to/filename

# Examples with details
chmod o=r filename          # rwxrwxrwx becomes rwxrwxr--. Prevent others from executing or modifying the file.
chmod g= filename           # rwxrwxrwx becomes rwx---rwx. Remove all permission for the group.
chmod og=rw filename        # rwxrwxrwx becomes rwxrw-rw-. Allow group or others to read or write the file.
chmod go-w filename         # rwxrwxrwx becomes rwxr-xr-x. Remove write permission for group and others to the file.
chmod a+wx filename         # r--r--r-- becomes rwxrwxrwx. Add Write and Execute permissions to All.
chmod g=u filename          # rwx------ becomes rwxrwx---. Copy the user permissions to the group.
                            # Mixing file mode permissions with user permission makes it invalid: chmod g=wu filename
chmod 754 filename          # --------- becomes rwxr-xr--. Assign numberic permission 754 to the file.
chmod +x filename           # --------- becomes --x--x--x. Add execute permission to everyone. Same as chmod a+x ...

# Cool Tricks
# Copy the permission from 'referencefile' to 'filename'.
chmod --reference=referencefile filename

# TODO
# 1. Explore the 's' permission not mentioned in the Users table above.
