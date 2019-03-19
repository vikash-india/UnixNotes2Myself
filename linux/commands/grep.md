# Description: The grep Command

### Notes
* The grep Command prints line matching a pattern.
* egrep, fgrep, and rgrep are different variants of grep.
* egrep is the same as grep -E. This is deprecated.
* fgrep is the same as grep -F. This is deprecated.
* rgrep is the same  as grep -r.

### Common Examples
```shell
grep -iE "regex" FILEPATTERN
grep -PR --include="*.java" --include="*.sql" "find_this_pattern" *
```

### Examples with details
```shell
grep "string" FILENAME                      # File Pattern can be given instead of FILE
grep "regex" FILEPATTERN                    # String can be any regex pattern and FILE can be any filepath pattern.
grep -i "regex" FILEPATTERN                 # Search ignoring case using the switch -i
grep -r "regex" *                           # Search RECURSIVELY in all files, directories and subdirectories.
grep -w "regex" FILEPATTERN                 # Search words only
grep -c "regex" FILEPATTERN                 # Count lines where regex matches.
grep -n "regex" FILEPATTERN                 # Output LINENUMBER along with the line content where the regex matches.
grep -v "regex" FILEPATTERN INVERT match.   # Output those lines which DOES NOT MATCH the regex.
grep -l 'regex' *                           # Only list files where regex matches. Use with -r flag to list files
                                            # recursively.
cat /proc/cpuinfo | grep -i 'Model'         # Grep input can also be piped from other unix commands
grep --color "regex" FILEPATTERN            # Force regex to COLOR the regex matched
grep -P "regex" FILEPATTERN                 # Interpret "regex" as a Perl regular expression
grep -C 5 "regex" FILEPATTERN               # Display 5 lines around match. Use -A N or -B N for displaying lines after
                                            # match or before match.

# Grep including a set of directories
grep -PR --include="*.java" --include="*.sql" "find_this_pattern" *

# Highlighting the search using GREP_OPTIONS environment variable.
export GREP_OPTIONS='--color=auto' GREP_COLOR='100;8'
```

### Cool Tricks
* None

### TODO
* None
