# Description: The git-clone Command

### Note
* None

### Common Examples
```
git clone git@github.com:vikash-india/GitNotes2Myself.git MyProject
```

### Detailed Examples
```
git clone git@github.com:vikash-india/UnixNotes2Myself.git              # Clone a repository. This involves 4 steps
                                                                        # 1. Creates a directory named UnixNotes2Myself.
                                                                        # 2. Initializes a .git directory inside it.
                                                                        # 3. Pulls down all the data for the remote
                                                                        #    repository.
                                                                        # 4. Checks out a working copy of the latest
                                                                        #    version as master.

git clone git@github.com:vikash-india/UnixNotes2Myself.git MyProject    # Create a local directory MyProject instead of
                                                                        # the default directory UnixNotes2Myself.
```

### TODO
* None
