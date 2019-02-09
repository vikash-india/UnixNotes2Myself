# Description: ps - Report a snapshot of the current processes.

# Notes
# None

# Common Examples
ps -ef | grep apache2
ps -f -u tomcat

# Examples with details
ps -ef                              # Use -e to display all the processes and -f to display full format listing.
ps -ef -u dilbert                   # Use -u option to displays the process that belongs to a specific username.
ps -ef -u dilbert,catbert           # Multiple username can be separated using a comma.
ps -ef | grep <PROCESS_NAME>        # Use ps with grep to get the list of process with the given command.
ps -ef | grep apache2               # Check details of apache2 process.
ps -f -C mysqld                     # List processes which has mysqld in its command execution.
ps -f --pid 1                       # List the processes based on PIDs.
ps -f --ppid 2                      # List the processes based on PPIDs.
ps -f --forest -C tomcat            # Use --forest switch to display ASCII art of process tree.
ps -ef --sort=-pcpu | head -5       # List the top 5 processes consuming most of the cpu.
ps -ef --sort=-pmem | head -5       # List the top 5 processes consuming most of the memory.
ps -p 3150 -L                       # List all threads of a process.


# Cool Trick
# 1. List processes with custom columns and custom column headers
ps -e -o pid,uname=USERNAME,pcpu=CPU_USAGE,pmem,comm

# 2. List the top 5 processes consuming most of the CPU.
ps -e -o uid,pid,ppid,c,%cpu=CPU_%,%mem=MEMORY_%,time,comm --sort=-pcpu | head -5

# 3. Create aliases for ps commands to list processes based on commands, users or groups.

# TODO
# 1. Explore man pages.
