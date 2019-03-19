# Description: The telnet Command

### Notes
* The telnet command is user interface to the TELNET protocol.

### Common Examples
```shell
# Check below
```

### Examples With Details
```shell
telnet dilbert              # Connect to host dilbert. Telnet default port is 23.
telnet dilbert 1234         # Connect to host dilbert on port 1234.
telnet www.google.com 80    # Connect to Google webserver on port 80 using a telnet client.
dpkg -l | grep telnet       # Display Find the version of telnet.
```

#### Send Mail Using SMTP Relay or SMTP Server
```shell
telnet 10.10.2.89 25

EHLO server.example.com
MAIL FROM: <vikash@perfios.com>
RCPT TO: <vikash.kmc@gmail.com>
DATA
From: "Vikash" <vikash@perfios.com>
To: "Another Vikash" <vikash.kmc@gmail.com>
Subject: Test message sent from manual telnet session
Date: Wed, 22 Sep 2015 17:50:00 +0530

Hello World,

This is a test message sent from a manual telnet session.

Regards,
VVV
.

QUIT
```

### Cool Tricks
* None

### TODO
* Explore man pages and more examples.
* Add telnet commands separately.

