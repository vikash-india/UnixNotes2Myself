# Description: The urandom Device File

### Notes
* The urandom device file gets random bytes.
* There are 2 special commands that work like files - /dev/random and /dev/urandom.
* ALWAYS use /dev/urandom
   - If you need a certain number of random bytes, read that number of bytes from /dev/urandom.
   - It is a "special file" that is made to be like a file to read random numbers from.
   - Using cat to read from /dev/urandom is a bad idea, because it will try to read /dev/urandom to the end - but it
     does not end.
   - You can use head. But take care to read by byte, not by line - because lines would be randomly separated by
     random newline bytes.
* NEVER use /dev/random
   - Normally, you want to use /dev/urandom, not /dev/random.
   - The problem is that /dev/random is hard to use in the right way - and easy to use in a wrong way. Using it wrong
     works at first, but creates strange - even random - performance problems later. Sometimes.
   - When you use /dev/urandom, it makes use of /dev/random internally, taking care of the tricky parts.

### Common Examples
```shell
head -c 30 /dev/urandom
```

### Examples with details
```shell
head -c 30 /dev/urandom     # Read 30 bytes from the device /dev/urandom
```

### Cool Tricks
* None

### TODO
* None
