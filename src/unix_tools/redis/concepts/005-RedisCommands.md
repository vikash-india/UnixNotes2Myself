# Description: Redis Commands

### Ping Command
* This command is often used to test if a connection is still alive, or to measure latency.
```shell
ping                        # PONG. Returns PONG if no argument is provided
ping "Hello World"          # "Hello World". Returns a copy of the argument as a bulk if provided.
```

### Echo Command
* Returns the message.
```shell
echo "Hello World"          # "Hello World"
```

### TODO
* None
