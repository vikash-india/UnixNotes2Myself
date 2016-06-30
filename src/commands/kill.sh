# Description: kill - send a signal to a process

# Syntax
 kill [-s] [-l] %pid
 s - Specify the signal to be sent. The signal can be specified by using name or number. The behavior of signals, and their identifying names,# are listed on our signals page.
 l - List signal names. This option has optional argument, which will convert signal number to signal name, or other way around. 
 pid - Send signal to every pid listed.

# Common Examples
	kill 1234
	kill -9 -1
	kill -l 11
        kill -L 

# Some important signals

Number	Signal Name	Description
0	SIGNULL		Used to check access to the process id
1	SIGHUP		Hup signal. Terminates the process.
2	SIGNINT		Interrupt signal. Terminating the process
3	SIGQUIT		Quit signal. Terminate process with core dump
9	SIGKILL		Forcibly killing a process
24	SIGSTOP		Pausing the process
26	SIGCONT		Runs a stopped process
	



	             
# Examples with details

 	kill -9 -1   Kill all processes you can kill.

       	kill -l 11   Translate number 11 into a signal name.

       	kill -L      List the available signal choices in a nice table.


# Cool Tricks

# TODO
# 1. None
