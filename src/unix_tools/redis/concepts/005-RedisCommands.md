# Description: Redis Commands

### APPEND Command
* If key already exists and is a string, this command appends the value at the end of the string. 
* If key does not exist it is created and set as an empty string, so APPEND will be similar to SET in this case.
* Return value
    - Integer reply: the length of the string after the append operation.
```shell
EXISTS key1                     # 0

APPEND key1 "Hello"             # 5
GET key1                        # "Hello"

APPEND key1 " World"            # 11
GET key1                        # "Hello World"
```

### DECR Command
* Decrements the number stored at key by one. 
* If the key does not exist, it is set to 0 before performing the operation. 
* An error is returned if the key contains a value of the wrong type or contains a string that can not be represented as 
  integer. 
* This operation is limited to 64 bit signed integers.
* Return value
    - Integer reply: the value of key after the decrement
```shell
SET key1 "10"                   # OK
DECR key1                       # 9 

DECR key2                       # -1. Since key2 does not exist, it is set to 0 and then incremented.
```

### DEL Command
* Removes the specified keys. A key is ignored if it does not exist.
* Time complexity
    - Time complexity is O(1) when removing a single key that holds a string value.
    - Time complexity is O(N) where N is the number of keys that will be removed. When a key to remove holds a value 
      other than a string, the individual complexity for this key is O(M) where M is the number of elements in the list, 
      set, sorted set or hash. 
* Return value
    - Integer reply: The number of keys that were removed.
```shell
SET key1 "1"
SET key2 "2"

DEL key1 key2 key3              # 2. Since key3 does not exists.
```

### ECHO Command
* Returns the message.
```shell
ECHO "Hello World"          # "Hello World"
```

### EXISTS Command
* Returns if key exists.
* Since Redis 3.0.3 it is possible to specify multiple keys instead of a single one. 
    - In such a case, it returns the total number of keys existing. 
    - If the same existing key is mentioned in the arguments multiple times, it will be counted multiple times.
* Return value
    - Integer reply 1 if the key exists.
    - Integer reply 0 if the key does not exist.
    - Integer reply N if N of keys specified exists. 
```shell
SET key1 "1"
SET key2 "1"

EXISTS key1                     # 1.
EXISTS key1 key2 nosuchkey      # 2. Since key3 does not exists.
EXISTS key1 key1 key1           # 3. Each argument is counted separately.
```

### EXPIRE Command
* Set a timeout on key. 
* After the timeout has expired, the key will automatically be deleted. 
* A key with an associated timeout is often said to be volatile in Redis terminology.
* The timeout will only be cleared by commands that delete or overwrite the contents of the key, including DEL, SET, 
  GETSET and all the *STORE commands.
* This means that all the operations that conceptually alter the value stored at the key without replacing it with a new 
  one will leave the timeout untouched. For instance, incrementing the value of a key with INCR, pushing a new value 
  into a list with LPUSH, or altering the field value of a hash with HSET are all operations that will leave the timeout 
  untouched.
* The timeout can also be cleared, turning the key back into a persistent key, using the PERSIST command.
* If a key is renamed with RENAME, the associated time to live is transferred to the new key name.
* Return value
    - Integer reply 1 if the timeout was set.
    - Integer reply 0 if key does not exist.
```shell
SET key1 1                      # OK

EXPIRE key1 10                  # 1
TTL key1

SET key1 "Hello"                # OK
TTL key1                        # -1. Expire is reset since the value was set.       
```

### FLUSHALL Command
* Delete all the keys of all the existing databases, not just the currently selected one. This command never fails.
* The time-complexity for this operation is O(N), N being the number of keys in all existing databases.
* FLUSHALL ASYNC:
    - Applicable to Redis 4.0.0 or greater.
    - Redis is now able to delete keys in the background in a different thread without blocking the server. An ASYNC 
      option was added to FLUSHALL and FLUSHDB in order to let the entire dataset or a single database to be freed 
      asynchronously.
* Return value: Simple string reply.
```shell
FLUSHALL                        # OK. Deletes all the keys of all the databases.
FLUSHALL ASYNC                  # OK. Delete keys asynchronously. Applicable to Redis 4.0.0 or greater. 
```

### GET Command
* Get the value of key. 
* If the key does not exist the special value nil is returned. 
* An error is returned if the value stored at key is not a string, because GET only handles string values.
* Return value: Bulk string reply: the value of key, or nil when key does not exist.
```shell
GET key1                        # "Hello!!!".
GET key20                       # (nil).
```

### INCR Command
* Increments the number stored at key by one. 
* If the key does not exist, it is set to 0 before performing the operation. 
* An error is returned if the key contains a value of the wrong type or contains a string that can not be represented as 
  integer. This operation is limited to 64 bit signed integers.
* This is a string operation because Redis does not have a dedicated integer type. The string stored at the key is 
  interpreted as a base-10 64 bit signed integer to execute the operation.
* Redis stores integers in their integer representation, so for string values that actually hold an integer, there is no 
  overhead for storing the string representation of the integer.
* Return value 
    - Integer reply: the value of key after the increment.
```shell
SET key1 "10"                   # OK
INCR key1                       # 11 

DECR key2                       # 1. Since key2 does not exist, it is set to 0 and then decremented.
```

### MSET Command
* Sets the given keys to their respective values. 
* MSET replaces existing values with new values, just as regular SET. 
* Use MSETNX if you don't want to overwrite existing values.
* MSET is atomic, so all given keys are set at once. It is not possible for clients to see that some of the keys were 
  updated while others are unchanged.
* Return value
    - Simple string reply: always OK since MSET can't fail.
```shell
MSET key1 1 key2 2              # OK

GET key1                        # "1"
GET key2                        # "2"
```

### PERSIST Command
* Remove the existing timeout on key, turning the key from volatile (a key with an expire set) to persistent (a key that 
  will never expire as no timeout is associated).
* Return value
    - Integer reply 1 if the timeout was removed.
    - Integer reply 0 if key does not exist or does not have an associated timeout.
```shell
SET key1 1                      # OK
EXPIRE key1 100                 # 1
TTL key1                        # 98

PERSIST key1                    # 1
TTL key1                        # -1
```

### PING Command
* This command is often used to test if a connection is still alive, or to measure latency.
```shell
PING                        # PONG. Returns PONG if no argument is provided
PING "Hello World"          # "Hello World". Returns a copy of the argument as a bulk if provided.
```

### RENAME Command
* Renames key to newkey. 
* It returns an error when key does not exist. 
* If newkey already exists it is overwritten, when this happens RENAME executes an implicit DEL operation, so if the 
  deleted key contains a very big value it may cause high latency even if RENAME itself is usually a constant-time 
  operation.
* Return value
    - Simple string reply
```shell
SET key1 1                      # OK

RENAME key1 newkey              # OK
GET newkey                      # "1"
```

### SET Command
* Set key to hold the string value. 
* If key already holds a value, it is overwritten, regardless of its type. 
* Any previous time to live associated with the key is discarded on successful SET operation.
* Set Command Options
    - EX seconds: Set the specified expire time, in seconds.
    - PX milliseconds: Set the specified expire time, in milliseconds.
    - NX: Only set the key if it does not already exist.
    - XX: Only set the key if it already exist.
* Since the SET command options can replace SETNX, SETEX, PSETEX, these commands might get deprecated in future.
* Set Return value
    - Simple string reply: OK if SET was executed correctly. 
    - Null reply: a Null Bulk Reply is returned if the SET operation was not performed because the user specified the 
      NX or XX option but the condition was not met.
```shell
SET key1 "Hello"                # OK. Set key1 to "Hello".
SET key2 "World"                # OK. Set key2 to "World".

SET key1 "Hello!!!"             # OK. Overwrites key1 to "Hello!!!" even if key1 exists.
SET key2 "WORLD" NX             # (nil). Set key2 to "WORLD" only if it does not exist.
SET key2 "Redis" XX             # OK. Use XX to only set the key if it already exist.

SET key3 "Redis" EX 60          # OK. Set TTL or expiry to 60 seconds.
SET key3 "Redis" EX 60 NX       # OK. Use EX and NX options together.

SET server:name "someserver"    # Keys can have colon (:) 
SET server:port "8080"          # Keys can have colon (:)
```

### TTL Command
* Returns the remaining time to live of a key that has a timeout. This introspection capability allows a Redis client to 
  check how many seconds a given key will continue to be part of the dataset.
* Return Value
    - Integer reply TTL in seconds.
    - Integer reply -2 if the key does not exist.
    - Integer reply -1 if the key exists but has no associated expire.
```shell

SET key1 1                      # OK
EXPIRE key1 100                 # 1

TTL key1                        # 97
```

### TODO
* None
