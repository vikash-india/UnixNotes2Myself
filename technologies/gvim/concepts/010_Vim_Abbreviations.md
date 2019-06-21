# Description: Abbreviation Commands in Vim

### Note
* None

### Abbreviations
* Abbreviations are shortcuts that vi automatically expands into the full text or commands whenever an abbreviation
  is typed in insert mode.
* The general syntax to define an abbreviation is `:ab abbreviation phrase`.
* Abbreviation will be expanded in insert mode only if it is typed as a full word. Abbreviations will not be expanded
  within a word.
* To avoid expansion of an abbreviation in insert mode, type Ctrl-V after the last character of the abbreviation.

### List ALL Abbreviations
```
:ab                     # Use :abbreviation command                         
```

### Define Abbreviations
```
# Abbreviations can save typing.
:ab aqbf A quick brown fox jumps right over the lazy dog.

# Abbreviations can improve accuracy by auto-correcting spelling mistakes.
:ab teh the

# Abbreviation can be used as shortcut to an often use command.
:ab hw    <Esc>:cd /home/dilbert/work/<CR>

# The below abbreviation will NOT keep on expanding Ace recursively.
:ab Ace Ace Code Editor 
```

### Remove One Abbreviations
```
:una teh
```

### Remove ALL Abbreviations
```
:abclear                # Use abclear command
:abc                    # Same as above. Use short form of :abclear
```

### Cool Tricks
* None

### TODO
* Use :abbreviation command creatively to automate daily mundane tasks.
