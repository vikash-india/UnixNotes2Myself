# Description: The ssh-keygen Command

### Notes
* The ssh-keygen command is an authentication key generation, management and conversion tool.
* The ssh-keygen tool generates, manages and converts authentication keys for ssh.
* The ssh-keygen tool can create RSA keys for use by SSH protocol version 1 and DSA, ECDSA or RSA keys for use by
  SSH protocol version 2.
* The program also asks for a passphrase. A passphrase is similar to a password, except it can be a phrase with a
  series of words, punctuation, numbers, whitespace, or any string of characters you want. Good passphrases are
  10-30 characters long, are not simple sentences or otherwise easily guessable (English prose has only 1-2 bits of
  entropy per character, and provides very bad passphrases), and contain a mix of upper and lower case letters,
  numbers, and non-alphanumeric characters.
* The passphrase may be empty to indicate no passphrase.
* There is no way to recover a lost passphrase.  If the passphrase is lost or forgotten, a new key must be generated
  and the corresponding public key copied to other machines.
* These keys differ from keys used by GNU Privacy Guard.

### Common Examples
```shell
ssh-keygen -t rsa -b 4096 -f my-ssh-key
ssh-keygen -t rsa -b 4096 -f my-ssh-key -N "A Long Pass Phrase"
ssh-keygen -lf my-ssh-key.pub
```

### Examples With Details
```shell
ssh-keygen                  # 1. Without any arguments, it will generate an RSA key pair for SSH protocol version 2.
                            # 2. ssh-keygen will prompt the user for a file in which to store the private key. If left
                            # blank the default location will be /home/dilbert/.ssh/id_rsa for the private key and
                            # /home/dilbert/.ssh/id_rsa.pub for the public key.
ssh-keygen -t rsa           # The -t option is used to specify the type of key.
ssh-keygen -t rsa -b 4096   # The -b option to specify the number of bits in the key.
                            # For RSA keys, minimum size is 768 and the default is 2048.
ssh-keygen -f my-ssh-key    # The -f option to specify the filename of the key file.
ssh-keygen -N "I like 999"  # The -N option provides the new passphrase.
ssh-keygen -p               # The passphrase can be changed later by using the -p option. This will prompt for the
                            # private key filename for which passphrase should be changed.
ssh-keygen -pf my-ssh-key   # Use the -f option along with -p to specify the private key file name directly.
ssh-keygen -l               # The -l option is used to check the bit length, fingerprint & protocol of a private key
                            # file. This will prompt for the the private key filename.
ssh-keygen -lf my-ssh-key   # Use the -f option along with -l to specify the private key file name directly.
ssh-keygen -lfv my-ssh-key  # If combined with -v, an ASCII art representation of the key is is also displayed.
ssh-keygen -qf my-ssh-key   # Use the -q option to silence ssh-keygen.
ssh-keygen -y -f my-ssh-key # Generate PUBLIC key from the private key.
```

### Cool Tricks
* None

### TODO
* Explore the usage of DSA, ECDSA etc.
