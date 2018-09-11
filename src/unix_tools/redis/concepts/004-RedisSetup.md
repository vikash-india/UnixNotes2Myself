# Description: Setup Redis

### Install Redis Server
```shell
sudo apt-get install redis-server
```

### Redis Server Configuration File
```shell
# Take a backup of original conf
sudo cp /etc/redis/redis.conf /etc/redis/redis.conf.default

# Read the default configuration file
sudo gvim /etc/redis/redis.conf 
```

### Start a Redis Client
```shell
redis-cli
```

### TODO
* None
