# Description: Setup Multiple Virtual Hosts on a Single Nginx Server

1. Suppose following two websites has to be hosted on port 800
    - a.com
    - b.com
2. Create a normal unix user without SSH access and without SUDO access to host both these websites. Say 'vikash' is the user.
    ```bash
        adduser vikash
    ```
3. Create the following directories structure for all websites
    - Copy the content for each website under its respective public_html
    - Each public_html directory should have index.html as the default page.
    - Examples: Check 'sites' directory for appropriate content for a.com and b.com
    ```bash
    sudo mkdir -p /home/vikash/sites/
    sudo mkdir -p /home/vikash/sites/a.com/public_html
    sudo mkdir -p /home/vikash/sites/b.com/public_html
    ```

4. Grant the ownership of the directory to the user 'vikash'
    ```bash
    sudo chown -R vikash:vikash /home/vikash/sites/a.com/public_html
    sudo chown -R vikash:vikash /home/vikash/sites/b.com/public_html
    ```

5. Additionally add permission to allow everyone to read these files.
    ```bash
    sudo chmod 755 /home/vikash/sites
    ```

6. Create one file for each website specifying all info about that virtual host
    - There will be 2 files - a.com.conf and b.com.conf containing appropriate entries for respective website.
    - Examples: Check 'conf' directory for appropriate configuration files for a.com and b.com
    ```bash
    server {
        listen   800;                                   ## listen on this port for ipv4
        #listen  [::]:80 default ipv6only=on;           ## listen on this port for ipv6

        root /home/vikash/sites/a.com/public_html;
        index index.html index.htm;

        server_name a.com;                              # Make site accessible from http://localhost/
    }
    ```

7. Copy these configuration files to /etc/nginx/sites-available/ directory
    ```bash
    sudo cp a.com.conf /etc/nginx/sites-available/a.com.conf
    sudo cp b.com.conf /etc/nginx/sites-available/b.com.conf
    ```

    Note:
    1. If sites-available is not present then create the directory
        sudo mkdir /etc/nginx/sites-available

8. Activate the host by creating a symbolic link between the sites-available directory and the sites-enabled directory
    ```bash
    sudo ln -s /etc/nginx/sites-available/a.com.conf /etc/nginx/sites-enabled/a.com.conf
    sudo ln -s /etc/nginx/sites-available/b.com.conf /etc/nginx/sites-enabled/b.com.conf
    ```

    Note:
    1. If sites-enabled is not present then create the directory
        ```bash
        sudo mkdir /etc/nginx/sites-enabled
        ```
    2. If sites-enabled is created then it should be included in nginx.conf directory under http section.
        ```bash
        include /etc/nginx/sites-enabled/*.conf;
        ```
    3. Disable the nginx default configuration by commenting it otherwise nginx will fall back to the
       default configuration if any particular site/configuration is not enabled.
        ```bash
        # include /etc/nginx/conf.d/*.conf;
        ```
    4. A site can be brought down simply by removing this symbolic link
        ```bash
        rm /etc/nginx/sites-enabled/a.com.conf
        rm /etc/nginx/sites-enabled/b.com.conf
        ```
9. Restart Nginx server
    ```bash
    sudo service nginx restart
    ```

10. Optional Step: Setup up localhosts in case a.com and b.com is not pointed to this machine.
    ```bash
    sudo gvim /etc/hosts

    Add the following lines, save and exit.
    # Nginx Virtual Hosts
    127.0.0.1    a.com www.a.com
    127.0.0.1    b.com www.b.com
    ```

    Note:
    1. This is for testing purpose only when the domain name a.com and b.com is not pointed to the machine IP.
    2. If the domain name a.com and b.com is already pointed to the server’s IP address then this step can be skipped.
