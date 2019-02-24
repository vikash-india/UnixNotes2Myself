# Description: The apg Command

### Notes
1. The apg utility stands for Advanced Password Generator.
2. The apg utility needs to be installed using the command `sudo apt-get install apg`.

### Common Examples
```shell
apg -a1 -n10 -m12 -MSNCL
```

### Examples With Details
```shell
sudo apt-get install apg        # Install apg as it is an external tool.

apg -a1 -n10 -m12 -Msncl        # Use -a1 option to specify algorithm as random. Use -a0 for pronounceable passwords.
                                # Use -n10 option to specify minimum number of passwords to be generated as 10.
                                # Use -m12 option to specify the minimum length of the password as 12.
                                # Use -Msncl option to include special character(s), numbers(n), capital letters(c)
                                # and lower case letters(l) in the every generated passwords.
apg -a1 -n10 -m12 -MSNCL        # Same as above except each password MUST include special character(s), numbers(n),
                                # capital letters(c) and lower case letters(l) in the EVERY generated passwords
apg -a0 -n6 -m8 -Msncl -t       # Use -t option to print pronunciation for generated pronounceable password. This works
                                # only with -a0 for pronounceable passwords algorithm.
```

### Cool Tricks
* None

### TODO
* None
