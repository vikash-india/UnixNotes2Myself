# Description: rsync - a fast, versatile, remote (and local) file-copying tool

# Notes
# 1. Use grsync tool for a GUI based rsync. Install it using sudo apt-get install grsync.
# 2. Never run rsync without using the --dry-run option first. Only after you have completed several safe runs and
#    verified no undesired files are copied, desired files are deleted, nothing is missing, and nothing has been
#    modified without your consent, only then should you try copying files in earnest.
# 3. Supports copying links, devices, owners, groups and permissions.
# 4. It’s faster than scp (Secure Copy) because rsync uses remote-update protocol which allows to transfer just
#    the differences between two sets of files. First time, it copies the whole content of a file or a directory
#    from source to destination but from next time, it copies only the changed blocks and bytes to the destination.
# 5. Rsync consumes less bandwidth as it uses compression and decompression method while sending and receiving data both
#    ends.

# Common Examples
rsync -avs --delete --dry-run -i dir1/ backup/
rsync -avs --delete -i dir1/ backup/

# Examples with details
rsync -avs dir1/ backup/                                            # General syntax is rsync FLAGS/OPTIONS SRC DEST
                                                                    # Use -a flag for all objects, -v for verbose output
                                                                    # and -s for not allowing remote shell to interpret
                                                                    # characters. The -s flag means file names with
                                                                    # spaces and special characters will not be
                                                                    # translated. This is needed especially if you have
                                                                    # Windows files, too.
rsync -avs --delete dir1/ backup/                                   # The --delete option will delete files at the
                                                                    # target/destination (backup), if they do not exist
                                                                    # in the source (dir1). This will always keep an up
                                                                    # to date list of files and the source and
                                                                    # destination will match. Also, the destination will
                                                                    # not slowly grow in size with older & irrelevant
                                                                    # content.
rsync -avs --delete --dry-run -i dir1/ backup/                      # The --dry-run option will give a detailed list of
                                                                    # what would have happened had you run for real.
rsync -avs --delete --log-file=rsync.log dir1/ backup/              # The --log-file=/path/to/file.log option will write
                                                                    # all changes to a log file.
rsync -avs -i --delete dir1/ backup/                                # The -i flag requests a simple itemised list of the
                                                                    # changes that  are  being  made  to  each file,
                                                                    # including attribute  changes.
rsync -avs --remove-source-files dir1/ backup/                      # Use --remove-source-files option automatically
                                                                    # delete source files after successful transfer.

# Include and Exclude Paths
rsync -avz --exclude 'file_?' dir1/ backup/                         # Use --exclude option to exclude multiple
                                                                    # directories that matches a pattern.
rsync -avz --exclude 'file_1' dir1/ backup/                         # Exclude a specific file.
rsync -avz --exclude '/file1' dir1/ backup/                         # IMPORTANT: Exclude path is always relative
                                                                    # /file1 means /dir1/file1.
rsync -avz --exclude file1 --exclude dir1/file2 dir1/ backup/       # Multiple --exclude option can be used to exclude
                                                                    # multiple files and directories.
rsync -avz --exclude-from 'rsync_exclude_list.txt' dir1/ backup/    # Exclude multiple files and directories at the
                                                                    # same time using a list mentioned in a file.
rsync -avz --include-from 'rsync_include_list.txt'  dir1/ backup/   # Similarly, include multiple files and directories
                                                                    # at the same time using a list mentioned in a file.
                                                                    # IMPORTANT: All files and directories mentioned in
                                                                    # include or exclude file is relative to dir1/.

# Examples of LOCAL rsync
rsync -vh  file1  backup/                                           # Copy/Sync one file locally.
                                                                    # Use -v switch for verbose,
                                                                    # Use -h switch for human-readable, output numbers
                                                                    # in a human-readable format.
rsync -vh  file?  backup/                                           # Copy/Sync one or more files using patterns locally
rsync -avh  dir2/ backup/dir2/                                      # Copy/Sync files and directories locally.
                                                                    # Use -a switch for archive mode. The archive mode
                                                                    # allows copying files recursively and it also
                                                                    # preserves symbolic links, file permissions, user &
                                                                    #  group ownerships and timestamps.

# Examples of REMOTE rsync
rsync -avzh dir2/ dilbert@mars:/home/dilbert/backup/                # Copy/Sync a Directory from Local Server to a
                                                                    # Remote Server. Use -z switch to compress file
                                                                    # data. The directory 'backup' will be created if
                                                                    # it does not exist.
                                                                    # If SSH is configured, it will be used.
rsync -avzh dilbert@mars:/home/dilbert/backup/dir2 backup/dir2/     # Copy/Sync a Remote Directory to a Local Machine.

# Examples of REMOTE rsync using SSH
rsync -avzhe ssh backup/dir2/ mars:/home/dilbert/backup/dir2/       # Copy/Sync a File from a Local Server to a Remote
                                                                    # Server with SSH.
                                                                    # Use -e switch to specify a protocol with rsync.
                                                                    # The -e ssh is used to specify ssh as the protocol.
rsync -avzhe ssh mars:/home/dilbert/backup/dir2/ backup/dir2/       # Copy/Sync a File from a remote server to a local
                                                                    # server using SSH.
rsync -avzhe ssh --progress mars:/home/dilbert/backup/ backup/dir2/ # Use --progress option to show progress while
                                                                    # transferring data.

# Cool Tricks
# None

# TODO
# None
