# Description: Common Nginx Commands

### Nginx Command Line Swiches
```bash
nginx -h                    # Displays help.
nginx -?                    # Same as above.
nginx -v                    # Show version and exit
nginx -V                    # Show version and configure options then exit.
nginx -t                    # Test configuration and exit. Checks syntax error in configuration files.
nginx -q                    # Quite mode. Suppresses non-error messages during configuration testing.
nginx -s signal             # Send signal to a master process: stop, quit, reopen, reload
nginx -p prefix             # Set prefix path (default: /etc/nginx/)
nginx -c filename           # Set configuration file (default: /etc/nginx/nginx.conf).
nginx -g directives         # Set global directives out of configuration file

```

### Controlling nginx Using 'nginx -s signal' Command
```bash
nginx -s stop               # Stops the daemon immediately (using the  TERM signal)
nginx -s quit               # Stops the daemon gracefully (using the QUIT signal)
nginx -s reopen             # Reopens the log file.
nginx -s reload             # Reload the configuration
killall nginx               # Alternate way to terminate process, in desperate cases only

```

### Managing nginx Service
```bash
sudo systemctl reload nginx # Reload Nginx configuration
```

### Nginx Note
- Manipulating Nginx directly on a production server is a dangerous thing. The best practice is to place the
  configuration file in a separate temporary file and run the test on that file using the -c and -t switch.
  ```bash
    nginx -t -c /home/vikash/test.conf
  ```
* A valid configuration file does not necessarily mean Nginx will start though as there might be additional problems such as socket issues, invalid paths or incorrect permissions.
* The -V switch shows the arguments used during the configure script before compilation.
* The -g option allows us to specify additional configuration directieves in case there are not included in
  the configuration file.
* Default installation points to the website at the location /usr/share/nginx/html;
* On Ubuntu, nginx is installed at the path /usr/sbin/nginx
* Two level of process
    - Nginx master process - Run as root so that they can open TCP sockets on any port (80 and 443). If started as different user, it might not be able to open port below 1024.
    - Nginx worker process - Spawned by master process under the account specified in configuration file with 'user' directive. If user is not specified, the worker process will be started as user nobody and group nobody.
* Trying to execute sudo /usr/sbin/nginx when the nginx is already running will show the following error
    ```bash
    nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)
    nginx: [emerg] still could not bind()
    ```
