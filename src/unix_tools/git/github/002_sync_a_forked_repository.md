# Description: How to Sync A Forked Repository With its Original Repository on GitHub

### List the currently configured remote repositories.
```
git remote -v
```

### Add a new remote upstream repository which will be pulled and merged into the fork.
```
git remote add upstream https://github.com/ORIGINAL_OWNER_NAME/ORIGINAL_REPOSITORY_NAME.git
```

### Verify if new upstream repository has been added.
```
git remote -v
```

### Fetch all the branches and its commits from the upstream repository.
```
git fetch upstream
```

### Check out the local master of the forked repository.
```
git checkout master
```

### Merge the changes from upstream/master into your local master branch.
```
git merge upstream/master
```

### Push the merge to your GitHub repository.
```
git push origin master
```

### Note
* None
