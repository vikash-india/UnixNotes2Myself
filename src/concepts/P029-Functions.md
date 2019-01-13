# Description: Functions

### Introduction
* Functions are used to avoid repeating same code.

### Function Definition
``` 
# Using function keyword
function function_name {
    # Code goes here
}

# Using function keyword
function_name () {
    # Code goes here
}
```

### Function Invocation
```
#!/bin/bash

function hello() {
    echo "Hello World!"
}

# Call the function
hello
```

### Definition Before Invocation
* Functions can call other functions.
* Function Must be defined before it is called.
```
#!/bin/bash

function hello() {
    echo "Hello World!"
    
    # It is alright to call the function here even though it is defined later.
    now                     
}

function now() {
    echo "Now!"
}

# At the moment of calling the function, both the functions are already defined. This is alright.
hello
```

### Function Parameters
* Functions can accept parameters.
* The first parameter is stored in $1. The parameters are stored in $1, $2, etc.
* The $@ variable contains all the parameters.
* The $0 is NOT the function name but the name of the script.
```
function hello() {
    echo "Hello $1!"
}

hello Dilbert
```

### TODO
* None
