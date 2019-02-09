# Description: Steps to setup an SSH Client

# Steps for setting up an SSH client are as follows
# 1. Generate a key pair using ssh-keygen.
# 2. Setup local host (which runs SSH Client).
# 3. Setup remote host (which runs SSH Server).

# Step 1: SSH Key Generation
# ==========================
# 1. Key generation is a one time activity which generates 2 files containing a private key and a public key.
# 2. Two files will be generated - key-file containing a private key & key-file.pub containing a public key.
ssh-keygen -t rsa -b 4096 -f key-file   # Generate 4096 bit RSA key pairs. Check ssh-keygen.sh for details.
ssh-keygen -p -f key-file               # Change the passphrase for an existing file. This can be used to remove the
                                        # passphrase too.
ssh-keygen -y -f  private-key-file      # Generate PUBLIC key from private key.


# Step 2: Setup Local Host (which runs SSH Client)
# ================================================
# 1. Under home directory on the local host, setup .ssh directory and a .ssh/config file with appropriate
#    permissions.
# 2. Create the content for .ssh/config using the template file ssh_setup_config.
# 3. Alias ssh to 'ssh -2' in the bash profile file and make it more secure.
mkdir ~/.ssh
touch ~/.ssh/config
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*


# Step 3: Setup remote host (which runs SSH Server)
# =================================================
# 1. Under home directory on the remote machine, setup .ssh directory and a .ssh/authorized_keys file with
#    appropriate permissions.
# 2. Add the content of the public key (key-file.pub) to the file ~/.ssh/authorized_keys
mkdir ~/.ssh
touch ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*                      # Sometime the permission should be 644 for the authorized_key.
                                        # Example Digital Ocean.

# Cool Tricks
# None

# TODO
# None
