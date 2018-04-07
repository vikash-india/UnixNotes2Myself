# Description: Setup Letsencrypt SSL on Apache

### Download the Let’s Encrypt Client
```bash
# Add the repository
sudo add-apt-repository ppa:certbot/certbot

# Update the package list 
sudo apt-get update

# Install Certbot 
sudo apt-get install python-certbot-apache
```

### Set Up the SSL Certificate
```bash
# For Single Domain
sudo certbot --apache -d example.com

# For Multiple Domains
sudo certbot --apache -d example.com -d www.example.com
```

### Verify SSL Certificate
1. The generated certificate files are available on path `/etc/letsencrypt/live`.
2. Verify the A rating status of SSL certificate by visiting `https://www.ssllabs.com/ssltest/analyze.html?d=example.com&latest`.

### Verifying Certbot Auto-Renewal
1. Let’s Encrypt certificates only last for 90 days.
2. The certbot package we installed takes care of this for us by running certbot renew twice a day via a systemd timer.
3. On non-systemd distributions this functionality is provided by a cron script placed in /etc/cron.d.
4. The task runs twice daily and will renew any certificate that's within thirty days of expiration.
5. If the automated renewal process ever fails, Let’s Encrypt will send a message to the email you specified, warning you when your certificate is about to expire.

```bash
# Test the renewal process using a dry run with certbot
sudo certbot renew --dry-run
```
