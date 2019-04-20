# Description: The xclip Command

### Notes
* The xclip command is the command line interface to X selections (clipboard).
* Install xclip using `sudo apt-get install xclip`.

### Common Examples
```shell
date +%F | tr -d '\n' | xclip -selection clipboard
```

### Examples With Details
```shell
cat fruits.txt | xclip                              # Copy any text or the output one command into the clipboard.
                                                    # Copy and paste will work only in the terminal. Switching to  
                                                    # another application and trying to paste there wont work.
cat fruits.txt | xclip -selection clipboard         # Copy and paste into another application will work.

xclip -o                                            # See the contents of clipboard.
date +%F | tr -d '\n' | xclip -selection clipboard  # Remove trailing \n from command output before sending to clipboard.
```

### Cool Tricks
* Instead of typing all of this everytime, You can setup alias in .bashrc file
```
alias x="tr -d '\n' | xclip -selection clipboard"
alias v='xclip -o'

# Now use the alias with any command
echo "Hello World" | x
```

### TODO
* None
