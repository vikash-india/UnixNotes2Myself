# Description: chattr - Change file attributes on a Linux file system

# Notes
# 1. Most of the attributes require sudo permission to be modified.
# 2. Read-Write Attributes: Various attributes in the file attribute string 'acdeijstuACDST' are as follows
              ╔═══════════╦════════════════════════════════╗
              ║ Attribute ║          Description           ║
              ╠═══════════╬════════════════════════════════╣
              ║ a         ║ append only                    ║
              ║ c         ║ compressed                     ║
              ║ d         ║ no dump                        ║
              ║ e         ║ extent format                  ║
              ║ i         ║ immutable                      ║
              ║ j         ║ data journalling               ║
              ║ s         ║ secure deletion                ║
              ║ t         ║ no tail-merging                ║
              ║ u         ║ undeletable                    ║
              ║ A         ║ no atime updates               ║
              ║ C         ║ no copy on write               ║
              ║ D         ║ synchronous directory updates  ║
              ║ S         ║ synchronous updates            ║
              ║ T         ║ top of directory hierarchy     ║
              ╚═══════════╩════════════════════════════════╝

# 3. Readonly Attributes:
              ╔═══════════╦════════════════════════════════╗
              ║ Attribute ║          Description           ║
              ╠═══════════╬════════════════════════════════╣
              ║ h         ║ huge file                      ║
              ║ E         ║ compression error              ║
              ║ I         ║ indexed directory              ║
              ║ X         ║ compression raw access AAAAAA  ║
              ║ Z         ║ compressed dirty file          ║
              ╚═══════════╩════════════════════════════════╝
# 4. Use lsattr to check the attributes set on a file.

# Common Examples
sudo chattr +i filename
sudo chattr +i -R directory

# Examples with details
chattr +i  file_or_dir_name         # The + operator adds the selected attribute(s) to the existing ones.
                                    # The file or directory with the +i attribute set, CANNOT be modified, deleted,
                                    # renamed, changed or moved. Even root user cannot modify that directory.
chattr -i  file_or_dir_name         # The - operator removes the selected attribute(s) from the existing ones.
chattr =i  file_or_dir_name         # The = operator sets the selected attribute(s) as the ONLY attributes.

chattr +i -R path/to/dir            # Use -R switch to make the changes recursively.

chattr -i -f a.txt                  # The -f switch suppress most of the error messages.
chattr +i -V file_or_dir_name       # Use -V switch to give verbose output. This shows version number as well.
chattr -v 22                        # Set the file's version/generation number.

# Cool Tricks
# None

# TODO
# 1. Explore the common usages of each file attribute.
