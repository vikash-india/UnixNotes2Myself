# Server side setup
#### step 1 :
install `bind9`

    sudo apt-get install bind9
    
#### step 2 :
navigate to `/etc/bind` , login as `root` user & add entry to  `named.local.conf` 
    
    zone    "carbon" {
        type master;
        file "/etc/bind/db.forward.com";
    };
    zone    "168.192.in-addr.arpa"{
        type master;
        notify  no;
        file    "/etc/bind/db.reverse.com";
    };

#### step 3 :
 create & populate file `db.forward.com`
    
    ;
    ; BIND data file for local loopback interface
    ;
    $TTL	604800
    @	IN	SOA	ns.carbon. root.localhost. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
    ;
    ;mandatory 
    @	IN	NS	ns.carbon.
    ns	IN	A	192.168.56.103 ;ip address of server

    ;host name mapping
    emu     IN	A	192.168.0.96
    ub14	IN	A	192.168.56.101
    ub16	IN	A	192.168.56.102
    
#### step 4 :
create & populate file `db.reverse.com`
   
    ;
    ; BIND reverse data file for local loopback interface
    ;
    $TTL	604800
    @	IN	SOA	ns.carbon. root.localhost. (
    			      1		; Serial
    			 604800		; Refresh
	    		  86400		; Retry
		    	2419200		; Expire
			     604800 )	; Negative Cache TTL
    ;
    ;mandatory
    @	IN	NS	ns.
    56.103	IN	PTR	ns.carbon.

    ;reverse mapping
    
    0.96	IN	PTR	emu.carbon  ; 192.168.0.96
    56.101	IN	PTR	ub14.carbon ; 192.168.56.101
    56.102	IN	PTR	ub16.carbon ; 192.168.56.102

#### step 5 :
__restart__ the `bind9` server

    sudo service bind9 restart
***
# Client side setup
### Ubuntu Clients
On Ubuntu and Debian Linux VPS, you can edit the head file, which is prepended to `resolv.conf` on boot:
Add the following lines to the file  `/etc/resolvconf/resolv.conf.d/head`

        search carbon
        nameserver  192.168.xx.xx

`192.168.xx.xx` is ip address of server
`carbon` is domain name

Now run `resolvconf` to generate a new `resolv.conf` file:

        sudo resolvconf -u
    
***
