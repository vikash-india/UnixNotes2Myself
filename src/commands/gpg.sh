# Description: gpg - OpenPGP encryption and signing tool

# Notes
# 1. None

# Common Examples
gpg --decrypt <filename.gpg>

# Examples with details
gpg --gen-key                                           # Create a key (It will ask a bunch of questions)
gpg --list-keys                                         # List the keys in the key database (or keyring).
gpg -e -r <UID> <filename>                              # Encrypt a file <filename> using the key with <UID>.
                                                        # 1. <UID> is the "Name (Comment) <Email ID>" that can be
                                                        # obtained using the --list-keys command.
                                                        # 2. A binary file is created with name filename.gpg. Original
                                                        # file remains intact.
gpg --encrypt --recipient <UID> <filename>              # Alternative long version of the above command.
gpg --output <outputfilename> --decrypt <filename.gpg>  # Decrypts the <filename.gpg> and creates the output file
                                                        # "outputfilename". This will prompt for the passphrase.
gpg --decrypt <filename.gpg>                            # Decrypt the filename and output the result to console.
gpg --export -a <UID> > <filename>                      # Use -a switch to export a public key for <UID> to the file
                                                        # <filename> in ASCII format.
gpg --export-secret-key -a <name> > <filename>          # Export a PRIVATE key for <UID>. Export private for reasons
                                                        # like creating one key pair share it across multiple machines
                                                        # or between different operating system.The exported key from
                                                        # one machine can then be imported back into another machine.
gpg --import <filename>                                 # Add public key in the file <filename> to MY public keyring.
gpg --allow-secret-key-import --import <filename>       # This adds the private key in the file <filename> to MY private
                                                        # key ring.
gpg --delete-key <UID>                                  # This removes the public key from your public key ring.
gpg --delete-secret-key <UID>                           # This deletes the secret key from your secret key ring.
gpg --list-secret-keys                                  # To list the keys in your secret key ring.
gpg --fingerprint > <filename>                          # To generate a short list of numbers that you can use via an
                                                        # alternative method to verify a public key.

# Cool Tricks
# None

# TODO
# None
