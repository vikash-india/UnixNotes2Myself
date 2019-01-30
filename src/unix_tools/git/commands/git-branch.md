# Description: The git-branch Command

### Note
* The git-branch command is used to create and delete branches.
* Creating a new branch is creating a new pointer to the same commit and names that pointer as branch name.
* Creating a new branch is as quick and simple as writing 41 bytes to a file (40 characters and a newline).

### Common Examples
```
```

### Detailed Examples
```
git branch                          # Listing all current branches. The * character next to a branch name indicates the
                                    # branch that is currently checked out.
git branch hotfix                   # Create a new branch named 'hotfix' from the current branch.
git branch -d hotfix                # Use the -d switch to delete the branch 'hotfix'.
git branch -v                       # Use the -v switch to see the last commit on each branch.
git branch --merged                 # Use the --merged switch to check those branches that have been merged into the
                                    # current branch. Branches without the * in front of them can be deleted.
git branch --no-merged              # Use the --no-merged switch to check the branches that have NOT been merged into
                                    # the current branches.
git branch -d unmergedBranch        # ERROR! Trying to delete a branch that has not been merged will result in an error.
git branch -D unmergedBranch        # Use -D switch to force delete a branch without merging.
git branch -m oldname newname       # Use -m switch to rename a branch from oldname to newname.
git branch -m newname               # Use -m switch WITHOUT oldname to rename the current branch.

git branch -u origin/dev            # Make origin/dev as the upstream branch for the current checkedout branch.
git branch -av                      # Show remote branches that no longer exists
```

### TODO
* None
