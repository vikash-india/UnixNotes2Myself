# Description: S-nail - Send and Receive Internet Mails

### Notes
* **Mail Client**: It is an application used by user directly to send and get emails. Mail clients connects to the mail 
  transfer agent to transmit emails.
* **Mail Transfer Agent (MTA)**: It is an intermediate component used to receive, send, store mail messages. 
* There are some protocol used to accomplish these tasks like smtp, pop3, imap etc.
* The architectural view of a simple email transmission is as follows
  ```
  Mail Client Sender --> MTA of sender --> MTA of receiver --> Mail Client Receiver
  ```
* The mail command on unix is available through the following packages
    - The gnu mailutils package: Use only a local smtp server.
    - The heirloom-mailx package: Capable of using an external smtp server to send messages.
    - The bsd-mailx package: Use only a local smtp server.
* The mailx from `heirloom-mailx` package is an enhanced version of the mail command which can use external SMTP relays. 
* The mail and mailx commands
    - The `/usr/bin/mailx` is symbolic link to `/etc/alternatives/mailx`.
    - The `/usr/bin/mail` is symbolic link to `/etc/alternatives/mail`.
    - Both `/etc/alternatives/mailx` and `/etc/alternatives/mail` are symbolic link to `/usr/bin/s-nail`
    - The mail/mailx command needs a local smtp server (MTA) running in order to deliver the emails.
  ```
  THe route taken by the email is somewhat like this -
  mail -> sendmail -> local MTA -> recipient MTA [Inbox]
  ```

### Common Examples
```shell
EMAIL_SUBJECT="Message from Application"
EMAIL_FROM_ADDRESS="application@example.com"
EMAIL_FRIENDLY_NAME="Application Mailer"
EMAIL_TO_ADDRESS="wally@dilbert.com"

SMTP_RELAY=''
SMTP_RELAY_PORT=587
SMTP_RELAY_USERNAME=''
SMTP_RELAY_PASSWORD=''

mailx -v -s "$EMAIL_SUBJECT" \
-S smtp-use-starttls \
-S ssl-verify=ignore \
-S smtp-auth=login \
-S smtp=smtp://$SMTP_RELAY:$SMTP_RELAY_PORT \
-S from="$EMAIL_FROM_ADDRESS($EMAIL_FRIENDLY_NAME)" \
-S smtp-auth-user=$SMTP_RELAY_USERNAME \
-S smtp-auth-password=$SMTP_RELAY_PASSWORD \
$EMAIL_TO_ADDRESS
```

### Examples With Details
#### Setup Mailx Command
```shell
# Install mail command from heirloom-mailx package
sudo apt-get install heirloom-mailx
```

#### Send Mail Using Gmail SMTP Relay
```shell
EMAIL_SUBJECT="Message Using Gmail"
EMAIL_FROM_ADDRESS=""
EMAIL_FRIENDLY_NAME=""
EMAIL_ACCOUNT_PASSWORD=""
EMAIL_TO_ADDRESS=""

SMTP_RELAY="smtp.gmail.com"
SMTP_RELAY_PORT=587

mailx -v -s "$EMAIL_SUBJECT" \
-S smtp-use-starttls \
-S ssl-verify=ignore \
-S smtp-auth=login \
-S smtp=smtp://$SMTP_RELAY:$SMTP_RELAY_PORT \
-S from="$EMAIL_FROM_ADDRESS($EMAIL_FRIENDLY_NAME)" \
-S smtp-auth-user=$EMAIL_FROM_ADDRESS \
-S smtp-auth-password=$EMAIL_ACCOUNT_PASSWORD \
$EMAIL_TO_ADDRESS
```

#### Send Mail Using External SMTP Relay WITHOUT TLS
```shell
EMAIL_SUBJECT="Message Using SMTP Relay"
EMAIL_FROM_ADDRESS=""
EMAIL_FRIENDLY_NAME=""
EMAIL_TO_ADDRESS=""

SMTP_RELAY=""
SMTP_RELAY_PORT=25
SMTP_RELAY_USERNAME=''
SMTP_RELAY_PASSWORD=''

mailx -v -s "$EMAIL_SUBJECT" \
-S smtp-auth=login \
-S ssl-verify=ignore \
-S smtp=smtp://$SMTP_RELAY:$SMTP_RELAY_PORT \
-S from="$EMAIL_FROM_ADDRESS($FRIENDLY_NAME)" \
-S smtp-auth-user=$SMTP_RELAY_USERNAME \
-S smtp-auth-password=$SMTP_RELAY_PASSWORD \
$EMAIL_TO_ADDRESS
```

#### Send Mail Using External SMTP Relay With TLS
```shell
EMAIL_SUBJECT="Message Using SMTP Relay With TLS"
EMAIL_FROM_ADDRESS=""
EMAIL_FRIENDLY_NAME=""
EMAIL_TO_ADDRESS=""

SMTP_RELAY=""
SMTP_RELAY_PORT=
SMTP_RELAY_USERNAME=''
SMTP_RELAY_PASSWORD=''

mailx -v -s "$EMAIL_SUBJECT" \
-S smtp-use-starttls \
-S ssl-verify=ignore \
-S smtp-auth=login \
-S smtp=smtp://$SMTP_RELAY:$SMTP_RELAY_PORT \
-S from="$EMAIL_FROM_ADDRESS($EMAIL_FRIENDLY_NAME)" \
-S smtp-auth-user=$SMTP_RELAY_USERNAME \
-S smtp-auth-password=$SMTP_RELAY_PASSWORD \
$EMAIL_TO_ADDRESS
```

#### Use mailx configuration file
```shell
EMAIL_SUBJECT="Message Using Config File for Gmail"
EMAIL_TO_ADDRESS=""
mailx -v -s "$EMAIL_SUBJECT" $EMAIL_TO_ADDRESS

# Use configuration file to send email using External SMTP relay with TLS
EMAIL_SUBJECT="Message Using Config File for SMTP Relay"
EMAIL_TO_ADDRESS=''
mailx -v -s "$EMAIL_SUBJECT" $EMAIL_TO_ADDRESS
```

#### Send Mail Using External SMTP Relay With TLS, CC, BCC and Attachments
```shell
TODO
```

### Cool Tricks
* None

### TODO
* None
