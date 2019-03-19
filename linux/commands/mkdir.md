# Description: The mkdir Command

### Notes
* The mkdir command makes directories.

### Common Examples
```shell
mkdir directory
mkdir -p a/b/c/d
```

### Examples with details
```shell
mkdir games                     # Creates a directory "game".
mkdir games music movies        # Creates 3 directories - games, music & movies.
mkdir -v games music movies     # Verbose Output while creating directory.
mkdir -p a/b/c/d                # Don’t display error if directory exists. Make parent directories as needed.
mkdir games games/1 games/2     # Creates 3 directory. Order is important.
```

### Cool Tricks
* Create directory paths and change to the newly created path. This can even be added in .bash_profile.
function md () { mkdir -p "$@" && cd "$@"; }
```shell
md a/b/c/d/e/f/g/h              # Relative path
md /home/dilbert/a/b/c/d/e/f/   # Absolute path
```

* Create complex directory tree
```shell
mkdir -p a/{a-1,a-2}/{a-1-1,a-1-2}
```

* Create a directory with todays date in YYYY-MM-DD
```shell
mkdir $(date +%Y-%m-%d)
```

### TODO
* None
