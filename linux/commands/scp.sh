# Description: scp - secure copy (remote file copy program)

# Notes
# None

# Common Examples
scp -C user@host1:/path/to/filename user@host2:filename
scp -C sshconfig:/path/to/filename user@host2:filename
scp -Cr cheetah:dilbert/test .

# Examples with details
scp user@host1:/path/to/filename user@host2:filename        # Common syntax.
scp sshconfig:/path/to/filename user@host2:filename         # Another common syntax if ssh is configured.
scp cheetah:dilbert/test/file1.txt .                        # Copy remote file "dilbert/test/file1.txt" on remote host
                                                            # "cheetah" to current local directory. Note the period.
scp t1.txt cheetah:dilbert/test/t4.txt                      # Copy local file t1.txt to remote location
                                                            # "dilbert/test/t4.txt" on remote host "cheetah".
scp cheetah:dilbert/test/\{t1.txt,t2.txt\} .                # Copy multiple remote files to current local directory at
                                                            # one shot.
scp -r cheetah:dilbert/test .                               # Copy a directory and all its subdirectories recursively.
scp -C cheetah:dilbert/test/t1.txt .                        # The -C flag enables compression by passing the flag to
                                                            # ssh.
scp -v cheetah:dilbert/test/t1.txt .                        # The -v flag is to run in verbose mode. Use -q flag for
                                                            # quiet mode.
scp dilbert@cheetah:t1.txt .                                # Prompts for password if ssh is not configured. Otherwise
                                                            # use ssh config for "cheetah".
scp -P22 user@cheetah:install.log .                         # -P flag is to specify port on remote host to run scp.
scp saturn:t1.txt cheetah:dilbert/t1.txt                    # Copies from host "B" to host "C" while logged into host
                                                            # "A". SSH config "cheetah" should exist on host "saturn"
                                                            # for this to work. Use -v option to explore more.
vim scp://cheetah/dilbert/t1.txt                            # Use VIM to open a remote file using scp. Syntax: vim
                                                            # scp://username@host/[/absolute]path/to/file.
scp -l10 user@urfix.com:/home/urfix/* .                     # Restrict Bandwidth for scp
vimdiff scp://[@]/                                          # Compare a remote file with a local file

# Copy something to multiple SSH hosts with a bash shell script loop.
for h in host1 host2 host3 host4 ; { scp file user@$h:/destination_path/ ; }

# Cool Tricks
# None

# TODO
# None
