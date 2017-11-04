# Description: Setup an Nginx Virtual Host

### Steps to setup a virtual host on Nginx for the domain example.com
1. Suppose we want to host a website on port 80 for the domain name example.com
2. Create a normal unix user without SSH access and without SUDO access to host this website. Say 'vikash' is the user.
    ```bash
    adduser vikash
    ```
3. Create the following directories structure for the website
    - Copy the content for the website under public_html
    - The public_html directory should have index.html as the default page.
    ```bash
    sudo mkdir -p /home/vikash/sites/example.com/public_html
    ```
4. Grant the ownership of the directory to the user 'vikash'
    ```bash
    sudo chown -R vikash:vikash /home/vikash/sites/example.com/public_html
    ```
5. Additionally add permission to allow everyone to read these files.
    ```bash
    sudo chmod 755 /home/vikash/sites
    ```
6. Create a sample index file with the following contents
    ```bash
    sudo gvim /home/vikash/sites/example.com/public_html/index.html

    <html>
        <head>
            <title>www.example.com</title>
        </head>
        <body bgcolor='#B2DBED' style='text-align: center; position:absolute; top:40%; left:40%;'>
            <h1>Welcome to example.com</h1>
        </body>
    </html>
    ```

7. Create a configuration file for the website specifying all info about the virtual host
    ```bash
    sudo gvim example.com.conf

    server {
        listen   80;                            ## listen for ipv4; this line is default and implied
        #listen  [::]:80 default ipv6only=on;   ## listen for ipv6

        root /home/vikash/sites/example.com/public_html;
        index index.html index.htm;

        server_name example.com;                # Make site accessible from http://localhost/
    }
    ```

8. Copy these configuration files to /etc/nginx/sites-available/ directory
    ```bash
    # If sites-available is not present then create the directory
    sudo mkdir /etc/nginx/sites-available
 
    sudo cp example.com.conf /etc/nginx/sites-available/a.com.conf
    ```bash
9. Activate the host by creating a symbolic link between the sites-available directory and the sites-enabled directory
    ```bash
    sudo ln -s /etc/nginx/sites-available/example.com.conf /etc/nginx/sites-enabled/example.com.conf

    # Note
    # If sites-enabled is not present then create the directory
    sudo mkdir /etc/nginx/sites-enabled
    
    # If sites-enabled is created then it should be included in nginx.conf directory under http section.
    include /etc/nginx/sites-enabled/*.conf;
    
    # Disable the nginx default configuration by commenting it otherwise nginx will fall back to the
    # default configuration if any particular site/configuration is not enabled.
    # include /etc/nginx/conf.d/*.conf;
    
    # A site can be brought down simply by removing this symbolic link
    rm /etc/nginx/sites-enabled/example.com.conf
    ```
10. Restart Nginx server
    ```bash
    sudo service nginx restart
    ```
11. Optional Step: Setup up localhosts in case example.com is not pointed to this machine.
    - This is for testing purpose only when the domain name example.com is not pointed to the machine IP.
    - If the domain name example.com is already pointed to the server’s IP address then this step can be skipped.
    ```bash
    sudo gvim /etc/hosts
    
    # Add the following lines, save and exit.
    # Nginx Virtual Hosts
    127.0.0.1    example.com www.example.com
    ```