# Description: The git-stash Command

### Note
* Stashing is used when the working directory is in a dirty state and there is a need to switch branches but dirty state
  is not yet ready to be checked in.

### Common Examples
```
git stash -u
```

### Detailed Examples
```
git stash                                               # Pushes a new stash onto your stack. Running git status will
                                                        # show the directory to be clean.
git stash list                                          # To see all stashes that has been stored
git stash apply stash@{2}                               # To apply an older stash from the stack, specify the stash name
                                                        # after git stash apply.
git stash apply                                         # To apply a latest stash from the stack. If you don’t specify a
                                                        # stash, Git assumes the most recent stash and tries to apply it.
                                                        # Note:
                                                        # 1. Having a clean working directory and applying it on the
                                                        # same branch aren’t necessary to successfully apply a stash.
                                                        # 2. Stash on one branch can be applied to another branch.
                                                        # 3. One can also have modified and uncommitted files in your
                                                        # working directory when you apply a stash. Git gives you merge
                                                        # conflict if it is not able to apply a stash successfully.
git stash drop stash@{0}                                # The apply option only tries to apply the stashed work and you
                                                        # continue to have it on your stack. Use stash drop command to
                                                        # remove the stash from the repository.
git stash drop                                          # To drop the latest stash from the stack. If you don’t specify
                                                        # a stashname, Git assumes the most recent stash and tries to
                                                        # drop it.
git stash show -p stash@{0} | git apply -R              # In some scenarios you might want to apply stashed changes, do
                                                        # some work, but then un-apply those changes that originally
                                                        # came from the stash. Git does NOT provide such a stash unapply
                                                        # command, but it is possible to achieve the effect by simply
                                                        # retrieving the patch associated with a stash and applying it
                                                        # in reverse.
git stash show -p | git apply -R                        # If you don’t specify a stash, Git assumes the most recent
                                                        # stash.
git stash branch testchanges                            # Creates a new branch for you, checks out the commit you were
                                                        # on when you stashed your work, reapplies your work there, and
                                                        # then drops the stash if it applies successfully.
git stash save "Modifications for Test Build"           # Give a name while stashing
git stash apply stash^{/Modifications for Test Build}   # Use regular expression to apply a stash using the name.
                                                        # Regular expression syntax is stash^{/<regex>}.
git stash pop stash@{n}                                 # To apply a stash and remove from the stash stack.
git stash -u                                            # Stash even the untracked files from version 1.7.7 onwards.
```

### Cool Trick
1. Create an alias and effectively add a stash-unapply command to your git
```
git config --global alias.stash-unapply '!git stash show -p | git apply -R'
```

### TODO
* None
