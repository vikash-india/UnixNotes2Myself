# Description: The atop Output

### Notes
* The summary view of atop shows system activity for Processes, CPU, memory, swap, disks and network in 10 second 
  intervals.

### Section 1: System Level View
* ATOP
    - dilbert-pc    : The name of the machine.
    - 2019/06/01    : Date in YYYY/MM/DD.
    - 19:18:36      : Time in 24-hour format HH:MM:SS
    - --------------: The atop flags like -c
    - 10s elapsed   : The atop interval. Default is 10s elapsed.
* PRC
    - About
        - Process and thread level totals.
    - sys  1.58s    : The total CPU time consumed in system mode (sys).
    - user 5.67s    : The total CPU time consumed in user mode (user).
    - proc 366      : The total number of processes present at this moment (#proc).
    - trun 2        : The total number of threads present at this moment in state 'running' (#trun).
    - tslpi 1573    : The total number of threads present at this moment in state 'sleeping interruptible' (#tslpi).
    - tslpu 2       : The total number of threads present at this moment in state 'sleeping un-interruptible' (#tslpu). 
    - zombie 1      : The number of zombie processes (#zombie).
    - clones 3      : The number of clone system calls ('clones').
    - exit 1        : The number of processes that ended during the interval (#exit, which shows ? if process 
                      accounting is not used).
* CPU
    - About
        - CPU utilization.
        - At least one line is shown for the total occupation of all CPUs together.
    - sys      17%  : The percentage of CPU time spent in kernel mode by all active processes ('sys')
    - user     57%  : The percentage of CPU time spent inuser mode ('user') for all active processes (including 
                      processes running with a nice value larger than zero).
    - irq       1%  : The percentage of CPU time spent for interrupt handling ('irq') including softirq. 
    - idle    566%  : The percentage of unused cpu time while no processes were waiting for disk-I/O ('idle').
    - wait    145%  : The percentage of CPU time spent when at least one process was waiting for disk-I/O ('wait').
    - steal     0%  : For virtual machines the steal-percentage is shown (`steal'), reflecting the percentage of cpu 
                      time stolen by other virtual machines running on the same hardware.
    - guest     0%  : For physical machines hosting one or more virtual machines, the guest-percentage is shown (guest), 
                      reflecting the percentage of cpu time used by the virtual machines.
    - curf 2.30GHz  : The current frequency (curf).
    - curscal  58%  : The current scaling percentage (curscal).
* cpu
    - About
        - In case of a multi-processor system, an additional line is shown for every individual processor with 'cpu' in 
          lower case), sorted on activity.
        - Other fields are similar to CPU.
* CPL
    - About
        - This line contains CPU load information.
        - This line contains the load average figures reflecting the number of threads that are available to run on a 
          CPU (ie part of the runqueue) or that are waiting for disk.
            I/O.
    - avg1    2.97  : These figures are averaged over 1 minutes (avg1).
    - avg5    3.07  : These figures are averaged over 5 minutes (avg5).
    - avg15   3.09  : These figures are averaged over 15 minutes (avg15).
    - csw    73100  : The number of threads that are available to run on a CPU (i.e. part of the runqueue) or that are 
                      waiting for disk I/O, the number of context switches (csw).
    - intr   26167  : The number of serviced interrupts (intr).
    - numcpu     8  : The number of available CPUs.
* MEM
    - About
        - This line contains information related to memory consumption.
    - tot    62.6G  : The total amount of physical memory (tot).
    - free   46.3G  : The amount of memory which is currently free (free).
    - cache   4.1G  : The amount of memory in use as page cache (cache).
    - dirty   0.7M  : The amount of memory within the page cache that has to be flushed to disk (dirty).
    - buff  595.4M  : The amount of memory used for filesystem meta data (buff).
    - slab  473.8M  : The amount of memory being used for kernel malloc’s (slab).
    - slrec 343.8M  : The amount of slab memory that is reclaimable (slrec).
    - shmem   3.0G  : The resident  size of  shared memory including tmpfs (shmem).
    - shrss 183.1M  : The resident size of shared memory (shrss).
    - shswp         : The amount of shared memory that is currently swapped (shswp).
    - vmbal   0.0M  : The amount of memory that is currently claimed by vmware's balloon driver (vmbal).
    - hptot   0.0M  : The amount of memory that is claimed for huge pages (hptot).
    - hpuse   0.0M  : The amount of huge page memory that is really in use (hpuse).
* SWP
    - About
        - Swap occupation and overcommit info.
    - tot     7.5G  : This line contains the total amount of swap space on disk (tot).
    - free    7.5G  : The amount of free swap space (free).
    - vmcom  30.4G  : The committed virtual memory space (vmcom).
    - vmlim  38.9G  : The maximum limit of the committed space (vmlim).
* DSK
    - About
        - This line contains information related to disk utilization.
    - sdc           : The disk partition.
    - busy      5%  : The portion of time that the unit was busy handling requests (busy).
    - read 3964714  : The number of read requests issued (read).
    - write   2576  : The number of write requests issued (write).
    - KiB/r    130  : The number of KiBytes per read (KiB/r).
    - KiB/w      5  : The number of KiBytes per write (KiB/w).
    - MBr/s    5.7  : The number of MiBytes per second throughput for reads (MBr/s).
    - MBw/s    0.0  : The number of MiBytes per second throughput for writes (MBw/s).
    - avq     1.26  : The average queue depth (avq).
    - avio 1.04 ms  : The average number of milliseconds needed by a request (avio) for seek, latency and data transfer.
* NET
    - About
        - This is the information related to Network utilization (TCP/IP).
        - One line is shown for activity of the transport layer (TCP and UDP)
        - One line is shown for activity of the IP layer.
        - One line is shown for activity of per active interface.
    - transport     : [TODO]
    - tcpi  453956  : The number of received TCP segments including those received in error (tcpi).
    - tcpo  392762  : The number of transmitted TCP segments excluding those containing only retransmitted octets (tcpo).
    - udpi  206898  : The number of UDP datagrams received (udpi).
    - udpo  103014  : The number of UDP datagrams transmitted (udpo).
    - tcpao   4171  : The  number of active TCP opens (tcpao).
    - tcppo      4  : The number of passive TCP opens (tcppo).
    - tcprs    622  : The number of TCP output retransmissions (tcprs).
    - tcpie      7  : The number of TCP input errors (tcpie).
    - tcpor   2190  : The number of TCP output resets (tcpor).
    - udpnp     65  : The number of UDP no ports (udpnp).
    - udpie      0  : The number of UDP input errors (udpie).

### Section 2: Process Level View
* About
    - This section shows process level information.
    - This has the detailed information related to the processes from which the resource utilization has changed 
      during the last interval (a default interval is 10 seconds).
    - Each row displays 
    - PID           : Process-id. If a process has been started and finished during the last interval, a `?' is shown.
    - SYSCPU        : CPU time consumption of this process in system mode (kernel mode), usually due to system call handling.
    - USRCPU        : CPU time consumption of this process in user mode, due to processing the own program text.
    - VGROW         : The amount of virtual memory that the process has grown during the last interval.
    - RGROW         : The  amount  of  resident memory that the process has grown during the last interval. 
    - RUID          : The real user-id under which the process executes.
    - EUID          : Effective user-id under which this process executes.
    - ST            : The status of a process.
                      - First Position: The first position indicates if the process has been started during the last 
                        interval. N means 'new process'.
                      - Second position: The second position indicates if the process has been finished during the last 
                        interval. E means 'exit' on the process' own initiative; the exit code is displayed in the 
                        column EXC. The value S means that the process has been terminated unvoluntarily by a signal; 
                        the signal number is displayed in the in the column EXC. The value C means that the process 
                        has been terminated unvoluntarily by a signal, producing a core dump in its current directory; 
                        the signal number is displayed  in the column EXC.
    - EXC           : The exit code of a terminated process (second position of column ST is E) or the fatal signal 
                      number (second position of column ST is S or C).
    - THR           : Total  number  of  threads within this process.
    - S             : The current state of the (main) thread: R for running (currently processing or in the runqueue), 
                      S for sleeping interruptible (wait for an event to occur), D for  sleeping  non-interruptible,  
                      Z for zombie (waiting to be synchronized with its parent process), T for stopped (suspended or 
                      traced), W for swapping, and E (exit) for processes which have finished during the last interval.
    - CPUNR         : The identification of the CPU the (main) thread is running on or has recently been running on.
    - CPU           : The occupation percentage of this process related to the available capacity for this resource on 
                      system level.
    - CMD           : The name of the process.

### TODO
* None
