# Description: Setup Letsencrypt SSL on Nginx

### Note
* [Certbot Official Website](https://certbot.eff.org/)
* It can automate certificate issuance and installation with no downtime.

### Prerequisites
* Install Ubuntu 16.04 server 
* Install Nginx
* Buy a fully registered domain name, say example.com.
* DNS records set up for your server. 
    - An A record with example.com pointing to your server's public IP address.
    - An A record with www.example.com pointing to your server's public IP address.
* An nginx server block specifying server name as example.com www.example.com.

### Install Certbot for Nginx
* Certbot is in very active development, so the Certbot packages provided by Ubuntu tend to be outdated. However, 
  the Certbot developers maintain a Ubuntu software repository with up-to-date versions, so we'll use that 
  repository instead.
```
# Install certbot
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update

# Install Nginx plugin
sudo apt-get install python-certbot-nginx
```

### Obtain a Letsencrypt SSL Certificate
- Letsencrypt config path is /etc/letsencrypt
- Letsencrypt log path is /var/log/letsencrypt/letsencrypt.log
- This runs certbot with the --nginx plugin, using -d to specify the domain names.
```bash
sudo certbot --nginx -d example.com -d www.example.com 
```

### Test and Verify SSL Configuration
* Reload website using https:// in a browser and check browser security indicator.
* Verify the A grade given by SSL Labs Server Test: https://www.ssllabs.com/ssltest/analyze.html?d=www.example.com

### Verifying Certbot Auto-Renewal
- The certbot package adds a renew script to /etc/cron.d. 
- This script runs twice a day and will automatically renew any certificate that's within thirty days of expiration.
- If the automated renewal process ever fails, Let’s Encrypt will send a message to the email specified, warning 
  when the certificate is about to expire.
```bash
sudo certbot renew --dry-run
```

### TODO
* None
