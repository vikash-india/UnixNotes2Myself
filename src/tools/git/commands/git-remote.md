# Description: The git-remote Command

### Note
* Remote branches are references to the state of branches on remote repositories.
* They’re local branches that can’t be moved. They’re moved automatically whenever any network communication is done.
* Remote branches have names in the form (remote)/(branch).  Hence there will be local pointer "orgin/master" for remote
  branch and a local pointer "master" for local branch.

### Common Examples
```
git remote -v
git remote add origin git@github.com:dilbert/try_git.git
git remote rm origin
```

### Detailed Examples
```
git remote              # To see which remote servers you have configured
git remote -v           # -v also shows the URL
git remote add origin git@github.com:dilbert/try_git.git   # Add a remote repository to git. The command git remote
                                                           # add takes 'remote name (origin)' and a repository URL
                                                           # (git@github.com:dilbert/try_git.git)
git remote prune origin # Remove stale branches from local that no longer exists on the server.
git remote rm origin    # Remove origin
```

### TODO
* None
