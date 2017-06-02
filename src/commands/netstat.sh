# Description: netstat - abrevated as 'network statistics' is a command-line tool that displays network connection (both incomming and outgoing), routing tables,and a number of network interface and network protocol statistics.

# Notes
# 1.  netstat is used for finding problems in the networkand to determine the amount of traffic on the network as a performance measurement
# 2.  netstat can be used to print network connections
# 3.  routing table information can also be visualized using netsat

# Common Examples
netstat
netstat -r
 

# Examples with details
netstat							    # list of open sockets will be printed
netstat -r 					        # Displays the kernel routing tabel in local machine
netstat -i 							# Dislays a table of all network interface
# Cool Tricks
# 1. All IP connected to my host (i.e to find all computer connected to my host through TCP connection)

netstat -lantp | grep ESTABLISHED |awk '{print $5}' | awk -F: '{print $1}' | sort -u

 
# TODO
# None