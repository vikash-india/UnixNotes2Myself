# Description: The git-diff Command

### Note
* None

### Common Examples
```
git diff master --stat
git diff master
git diff myBranch masterBranch -- path/to/file.java
```

### Detailed Examples
```
git diff                                                # To see what has changed but not yet staged, use git diff
                                                        # without any arguments. This does not show all changes made
                                                        # since last commit but only the changes that are made but not
                                                        # staged.
git diff --cached                                       # To see what has been staged that will go into the next commit.
git diff --staged                                       # Same as git diff --cached for Git versions 1.6.1 or later.
git diff path/to/file.java                              # Show diff between the working file and the commited file in
                                                        # the same branch.
git diff master --numstat                               # Show statistics of difference of files from current branch
                                                        # compared to a master branch.
git diff myBranch masterBranch -- path/to/file.java     # Diff between two files on different branches
git diff --stat  <commit-SHA1> <commit-SHA2>            # Get change statistics between two commits
git diff --stat HEAD                                    # Get change statistics between working directory and the HEAD.
git diff --stat Same as above.                          # Get change statistics between working directory and the HEAD.
git diff --stat HEAD^ HEAD                              # Get change statistics between parent of HEAD and HEAD
git diff HEAD                                           # The diff of our most recent commit, which we can refer to
                                                        # using the HEAD pointer.
```

### TODO
* None
