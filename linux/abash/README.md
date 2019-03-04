# Description: Abash Library

### About
* The abash library is a bash library containing bash utlility functions.

### Execution Notes
* Run scripts developed using this library as `script_name [arguments...] 2>&1 | tee /path/to/output.log`.
    - 2>&1 redirects channel 2 (stderr/standard error) into channel 1 (stdout/standard output). 
    - Append to the log file, use tee -a as in `script_name [arguments...] 2>&1 | tee -a /path/to/output.log`

### Development Notes
* The files under `src` should be independent functions which can be included in any source file.
* Avoid using echo statement inside library functions so that it does not get printed without timestamp in scripts.

