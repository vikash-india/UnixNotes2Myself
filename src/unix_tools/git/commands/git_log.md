# Description: The git-log Command

### Note
* None

### Common Examples
```
git log --pretty=oneline
```

### Detailed Examples
```
git log                                         # View the commit history.
git log -p -2                                   # Shows the diff introduced in each commit. -2 limits the diff of ONLY
                                                # last 2 entries in each commits
git log --stat                                  # Prints below each commit entry a list of modified files, how many
                                                # files were changed, and how many lines in those files were added and
                                                # removed. It also puts a summary of the information at the end.
git log --pretty=oneline                        # --pretty option changes the log output to formats other than the
                                                # default. oneline option prints each commit on a single line. Other
                                                # options are short, full and fuller.
git log --pretty=format:"%h - %an, %ar : %s"    # format is used to specify custom log output format. Check reference
                                                # for all options.
git log --pretty=format:"%h %s" --graph         # --graph option adds a nice little ASCII graph showing all branches
                                                # and merges history.
git log --since=2.weeks                         # --since option is used to check commits since a particular time. Even
                                                # date can be given as input to --since switch.
```

### TODO
* None
