# Description: touch - change file timestamps

# Notes
# None

# Common Examples

# Examples with details
touch path/to/filename                      # Create an empty filename with current timestamp.
touch file1 file2 file3                     # Create multiple files with current timestamp.
touch -a filename                           # Change only the access time.
touch -m filename                           # Change only the modification time.
touch -c filename                           # Do not create any files. Same as --no-create.
touch -r sourceFile filename                # Use sourceFile's times instead of current time.
touch --reference sourceFile                # Same as -r.

touch -t '200001312300.23' filename         # Use [[CC]YY]MMDDhhmm[.ss] as TIMESTAMP instead of the current time.

touch --date "2010-01-25" filename          # STRING in YYYY-MM-DD format.
touch -d '1 day ago' filename               # STRING can be other human readable format. Set timestamp to 1 day ago.
touch --date '1 day ago' filename           # --date is long form of -d. Same as above.
touch -d '11 hour ago' filename             # Set timestamp to 11 hour ago.
touch -d '2 hour ago - 3 minute' filename   # Set timestamp to 2 hour and 3 minutes ago.
touch -d '16 hour' filename                 # Set timestamp to 16 hours in FUTURE.

# Cool Tricks
# 1. Touch a file with todays date in YYYY-MM-DD
touch $(date +%Y-%m-%d)

# TODO
# None
