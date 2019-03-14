# Description: Redirect Script Output to STDOUT and a File

### Note
* The code `2>&1` redirects channel 2 (stderr/standard error) into channel 1 (stdout/standard output).
* Use `tee -a` to append to log file instead of overwriting the log file.

### Redirect Script Output to STDOUT and a File
* Redirect output of a bash script to STDOUT and a file OVERWRITING the log file.
```
# Overwrite the log file
script_name [arguments...] 2>&1 | tee /path/to/output.log
```

* Redirect output of a bash script to STDOUT and a file APPENDING to the log file.
```
# Append to log file
script_name [arguments...] 2>&1 | tee -a /path/to/output.log
```

### TODO
* None
