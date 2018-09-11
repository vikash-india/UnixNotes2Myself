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
# Start Redis client locally
redis-cli
```

### Redis Server and Client Version
```shell
# Get the version of the server
redis-server -v

# Get the version of the client
redis-cli -v

# Get the version of the server from the client
redis-cli
INFO
```

### TODO
* None
