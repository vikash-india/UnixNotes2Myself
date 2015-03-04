# Description: cvs - Concurrent Versions System

# Notes
# 1. Important: If you have a choice then choose git over cvs ANYDAY.
# 2. CVS client needs to be installed before using this tool.
# 3. Add .cvsignore in every directory containing pattern for each of the files to be ignored. These files will not show
#    up in any cvs client wincvs.

# Common Examples
cvs update -Pd


# Examples with details
############## CVS Installation and Setup
sudo apt-get install cvs                        # Install CVS client
CVSROOT=:pserver:dilbert@hostname:/var/cvs      # Add the following entry in .bashrc file. If CVS server is on the same
                                                # machine, just use CVSROOT=/var/cvs.
export CVSROOT # CVS Client setup               # Add the following entry in .bashrc file.


############## CVS Login
cvs login                                       # Login to CVS server.
                                                # 1. This will prompt for the password and store the login info along
                                                # with password in $HOME/.cvspass.
                                                # 2. CVS verifies it with the server. If the verification succeeds,
                                                # then that combination of username, host, repository, and password is
                                                # permanently recorded, so future transactions with that repository
                                                # won't require you to run cvs login.
cvs -d :pserver:dilbert@hostname:/var/cvs login # Login to CVS server when CVSROOT is not set.


############## CVS Logout
cvs logout                                      # Logout of CVS server. This will delete the entry from $HOME/.cvspass.

############## CVS Checkout
cvs checkout project_name                       # Checkout the project project_name from the CVS server. This creates a
                                                # new directory under the current directory and checks out the content
                                                # into the directory.
cvs checkout project_name/module_name           # This checks out the module module_name from project project_name.


############## Update
cvs update                                      # 1. Check for updates from the CVS server in the current directory ie
                                                # Period (.) is default argument to update.
                                                # 2. Works recursively and updates all files in the subdirectories too.
                                                # 3. Run this command from the directory one level up from the project
                                                # checked out or from the project directory
                                                # This command if run from any directory within the project will only
                                                # update that directory.
cvs update -l                                   # Do not update recursively
cvs update -Pd                                  # Brings a file up to date.
                                                # 1. Use -d switch is to create directories added by other developers.
                                                # 2. Use -P switch to not create directories that has been purged.
cvs update -Pd > x.txt                          # Output the modified, updated file list etc to x.txt.
cvs -q update                                   # Query Update compared to the current build

############## CVS Add
cvs add filename                                # Add to CVS to track changes to the file filename. The add
                                                # command is not recursive.
cvs add -kb filename                            # Add to CVS to track changes in the BINARY file filename.
cvs add foo foo/bar                             # Add a directory to CVS before adding files under those directories.
                                                # Each directory will need to be added separately before you will be
                                                # able to add new files to those directories.

############## Commit
cvs commit filename                             # Commit a file to CVS after adding or removing
cvs commit -m "Comment" <list_of_file_names>    # Commit multiple files to CVS.

############## CVS Remove
cvs remove <filename>                           # Remove a file. Use commit after that.
                                                # 1. After executing remove for a file, revert it with an add command.
                                                # 2. Before executing remove command, use update to resurrect the file.

############## Rename Files
mv old new                                      # Renaming a file in CVS. This will preserve the history
cvs remove old                                  # Part of above command sequence.
cvs add new                                     # Part of above command sequence.
cvs commit -m "Renamed old to new" old new      # Part of above command sequence.

############## Diff
cvs diff -r 1.1 -r 1.2                          # View difference between 2 files with revision 1.1 and 1.2.
                                                # Generally this is executed after the cvs log filename command.
############## CVS Log
cvs log filename                                # View file history
cvs -q log -N -S -wdilbert > x                  # Check all commits by a user in CVS.
                                                # IMPRORTANT: Watchout! The order of the switches matters.
                                                # Use -N switch to do not list tags.
                                                # Use -S switch to do not print name/header if no revisions selected.
                                                # Use -w[user] switch to only list revisions checked in by the
                                                # specified user.
cvs log -w<user> <filename>                     # Get the list of all the files checked in by user.
cvs log -t -wdilbert                            # Same as above.

############## CVS History
cvs history -a -c  -D 2009-01-20                # To review all commits by all users since 2009-01-20.
cvs history -c -u<user> -D<Date in YYYY-MM-DD>  # List of files checked in by a <USER> since a <Date>.
cvs history -c -uvikash -D2012-04-24            # List of files checked in by a <USER> since a <Date>.
cvs history -c -a -D2012-04-27                  # List of files checked in by ALL users since a <Date>

# Cool Tricks
# None

# TODO
# None
