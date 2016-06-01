# Description: find - Search for files in a directory hierarchy

# Notes
# 1. This command can be used to search for files by name, owner, group, type, permissions, date, and other criteria.
# 2. The general syntax is: find [Where to look] [Criteria] [What to do]
#   - Where to look: This defaults to . ie the current working directory.
#   - Criteria: This defaults to none ie select all files.
#   - What to do: This is also known as the find action. This defaults to ‑print ie display the names of found files to
#     standard output.
# 3. The search is recursive and it will search all subdirectories.

# Common Examples
find . -name foo* 2>/dev/null

# Examples with details
find                                    # Display the pathnames of all files in the current directory recursively.
find .                                  # Same as above. Where to look defaults to the current directory.
find -print                             # Same as above. What to do defaults to -print.
find . -print                           # Same as above. Criteria defaults to none.
find / -name foo 2>/dev/null            # Not running this command as root will show error message for each directory.
find /tmp /var/tmp . $HOME -name foo    # Specify multiple 'Where to look' places to search.
find . -name foo\*bar                   # Use shell-style wildcards in the ‑name search argument.
find / -type f -mtime -7                # Find any regular files (i.e., not directories or other special files) with
                                        # the criteria '‑type f', and only those modified seven or fewer days ago with
                                        # the criteria '‑mtime ‑7'.
find / -mmin -10                        # Find files modified less than 10 minutes ago.
find . -perm -o=w                       # Find files that are writable by “others”. This will include symlinks, which
                                        #  should be writable by all.
find . -name Hello.java                 # Finds Hello.java in the current directory resursively. Use the switch -name
                                        # is to perform a name search for the filename Hello.java.

# Cool Tricks

# Find all files with name 'CVS' and delete it recursively using xargs.
find . -name 'CVS' | xargs rm -rf

# Same as above.
# 1. Run the rm command once per file.
# 2. Not as efficient as the above command
# 3. This one is safer if file names contain spaces or newlines.
find . -name core -exec /bin/rm -f '{}' \;

# Same as above.
# 1. Run the rm command once per file.
# 2. Not as efficient as the above command
# 3. This one is safer if file names contain spaces or newlines.
find . -name core -delete

# TODO
# 1. Explore man pages.
