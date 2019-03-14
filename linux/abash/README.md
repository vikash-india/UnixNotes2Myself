# Description: Abash Library

### About
* The abash library is a bash library containing bash utility functions.

### Setup Abash Library
* Copy the directory `UnixNotes2Myself/linux/abash` to any location on your PC.
* Set the ABASH_DIR variable in `.bashrc`
```
export ABASH_DIR=/absolute/path/to/UnixNotes2Myself/linux/abash
```
* Include the library in any bash script and call the functions.
```
# Include abash library
source ${ABASH_DIR}/main.sh
```

### Development Notes
* The files under `src` should be independent functions which can be included in any source file.
* Avoid using echo statement inside library functions so that the library functions does not print anything that is not 
  required by the scripts.
