# Description: Vim Macros

### Note
* Vim Macro is used to record and play a sequence of actions inside the editor.
* The steps to RECORD a macro
    - Start recording by pressing q, followed by a lower case character to name the macro.
    - Perform any typical editing, actions inside Vim editor, which will be recorded.
    - Stop recording by pressing q.
* The steps to PLAY a macro are
    - Play the recorded macro by pressing @ followed by the macro name.
    - To repeat macros multiple times, press : NN @ macro name where NN is a number.

### Record a Macro to Delete First Two Words in Current Line
```
# Create Recording
q                       # Start recording.
a                       # Store the recording in letter 'a'. Eg. qa
02dwj                   # Command to delete first 2 words of current line and move to next line.
q                       # Stop the recording

# Play the Recording stored in letter 'a' 10 times
10@a                    # Play the recording. Eg. 10@a
```

### Cool Tricks
* Record a macro using qq, macro steps, q. Then paste the macro from q register using "qp and add the macro in .vimrc.

### TODO
* None
