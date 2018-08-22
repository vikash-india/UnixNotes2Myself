# Description: The git-checkout Command

### Note
* None

### Common Examples
```
git checkout master
git checkout -b hotfix
git checkout --ours path/to/filename
git checkout --theirs path/to/filename
```

### Detailed Examples
```
git checkout -- HelloWorld.py   # Check out the file from HEAD and discards the changes in the working directory.
git checkout hotfix             # Move the HEAD to point to the hotfix branch.
git checkout master             # Move the HEAD to point back to the master branch. It reverts the files in the working
                                # directory back to the snapshot that master points to. Note: If the working directory
                                # or index has uncommitted changes that may conflict with the branch being checked out,
                                # Git won’t allow to switch branches.
git checkout -b hotfix          # Use -b switch to create a branch hotfix and switch to it at the same time.
git checkout --ours filename    # In case of conflict during merge, use --ours switch to keep the file from the current
                                # branch.
git checkout --theirs filename  # In case of conflict during merge, use --theirs switch to keep the file from the branch
                                # being merged instead of the current branch.
```

### TODO
* None
