# Description: The git-tag Command

### Note
* Git uses two main types of tags: lightweight and annotated.
* Lightweight Tag: A lightweight tag is like a branch that doesn’t change - it’s just a pointer to a specific commit.
* Annotated tags: Annotated tags are stored as full objects in the Git database. They’re checksummed, contain the
  tagger name, e-mail, and date; have a tagging message; and can be signed and verified with GNU Privacy Guard (GPG).

### Common Examples
```
git tag -a Version_1.0.1 -m 'Version 1.0.1'
git tag -a volume-1-issue-1 -m 'Inauguration edition of Perfios Pulse.'

# Push the tags to the server
git push origin --tags

# Delete Remote tags
git push origin --delete TAG1 TAG2 TAG3
```

### Detailed Examples
```
git tag                                                 # Lists all available tags in Git.
git tag -l 'v1.4.2.*'                                   # Search for a particular tag, 1.4.2 series in this example.
git tag -a v1.4 -m 'my version 1.4'                     # Create an annotated tag in Git. The -m specifies a tagging
                                                        # message, which is stored with the tag. If -m is not specified
                                                        # Git launches an editor to type in a message for the tag.
git show v1.4                                           # See the tag data along with the commit that was tagged.
git tag -s v1.5 -m 'my signed 1.5 tag'                  # Tags can be signed with GPG, assuming you have a private key.
                                                        # Use -s instead of -a. git show also shows your GPG signature.
git tag v1.4-lw                                         # To create a lightweight tag, omit -a, -s, or -m which is
                                                        # basically the commit checksum stored in a file - no other
                                                        # information is kept.
git tag -v v1.4.2.1                                     # To verify a signed tag, you use git tag -v [tag-name]. This
                                                        # command uses GPG to verify the signature. You need the
                                                        # signer’s public key in your keyring for this to work properly.
git tag -a v1.2 -m 'version 1.2' 9fceb02                # You can also tag commits after you’ve moved past them ie any
                                                        # previous version by specifying the commit checksum (or part of
                                                        # it) at the end of the command. Eg 9fceb02 at the end.
git tag -a v2013-04-17 -F CommitMessage.txt 033793c9067 # Use -F option to take the commit message from a file
                                                        # Use sha1 of the commit to tag any previous version
git tag -d v2013-04-17                                  # Delete a tag v2013-04-17
git push origin v1.5                                    # Since git push command doesn’t transfer tags to remote
                                                        # servers, explicitly push tags to a shared server after
                                                        # creating them.
git push origin --tags                                  # Multiple tags can be pushed using --tags option. It will
                                                        # transfer all of your tags to the remote server that are not
                                                        # already there.
```

### TODO
* None
