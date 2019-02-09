# Description: The git-commit Command

### Note
* The git-commit command is used to record/commit changes to the repository.

### Common Examples
```
git commit
git commit -m 'Bug fix for bug id 1729'
git commit -F /path/to/commit/message/file
```

### Detailed Examples
```
git commit                                          # Commit all changes from index to git. This will fire up an editor
                                                    # for the commit message. The unstaged files will not be committed.
git commit -m 'Initial project version'             # Use the -m switch to specify commit message on the command line to
                                                    # to commit all changes from index to git.
git commit -a -m "Bug Id 1729: Fix memory leaks"    # Use -a switch to skip index and commit directly from working
                                                    # directory to git.
git commit --amend                                  # Use the --amend switch to overwrite the changes in the index to
                                                    # git previous commit. If nothing has changed, only the previous
                                                    # commit message gets modified.
```

### TODO
* None
