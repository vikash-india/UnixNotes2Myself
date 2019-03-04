# Description: Code Style Guide for Bash Scripts

### General
* Use Bash is the only shell scripting language permitted for executables.
* Shell scripts should only be used for small utilities or simple wrapper scripts.
    
### Shell Files and Interpreter Invocation
* File Extensions
    - Executables should have no extension (strongly preferred) or a .sh extension. 
    - Libraries must have a .sh extension and should not be executable.
* SUID/SGID: SUID and SGID are forbidden on shell scripts.

### Environment
* STDOUT vs STDERR: All error messages should go to STDERR.

### Comments
* File Header: Start each file with a description of its contents.
* Function Comments
    - Any function that is not both obvious and short must be commented. 
    - Any function in a library must be commented regardless of length or complexity.
* Implementation Comments
    - Comment tricky, non-obvious, interesting or important parts of your code.
* TODO Comments
    - Use TODO comments for code that is temporary, a short-term solution, or good-enough but not perfect.

### Formatting
* While you should follow the style that's already there for files that you're modifying, the following are required for any new code.
* Indentation: Indent 4 spaces. No tabs.
* Line Length and Long Strings
    - Maximum line length is 120 characters.
* Pipelines
    - Pipelines should be split one per line if they don't all fit on one line.
* Loops
    - Put ; do and ; then on the same line as the while, for or if.
* Case statement
    - Indent alternatives by 2 spaces.
    - A one-line alternative needs a space after the close parenthesis of the pattern and before the ;;.
    - Long or multi-command alternatives should be split over multiple lines with the pattern, actions, and ;; on separate lines.        
* Variable expansion
    - In order of precedence: Stay consistent with what you find; quote your variables; prefer "${var}" over "$var", but see details.
* Quoting
    - Always quote strings containing variables, command substitutions, spaces or shell meta characters, unless careful unquoted expansion is required.
    - Prefer quoting strings that are "words" (as opposed to command options or path names).
    - Never quote literal integers.
    - Be aware of the quoting rules for pattern matches in [[.
    - Use "$@" unless you have a specific reason to use $*.
        
### Features and Bugs
* Command Substitution
    - Use $(command) instead of backticks.
* Test, [ and [[
    - [[ ... ]] is preferred over [, test and /usr/bin/[.
* Testing Strings
    - Use quotes rather than filler characters where possible.
* Wildcard Expansion of Filenames
    - Use an explicit path when doing wildcard expansion of filenames.
* Eval
    - eval should be avoided.
* Pipes to While
    - Use process substitution or for loops in preference to piping to while. Variables modified in a while loop do not propagate to the parent because the loop's commands run in a subshell.
        
### Naming Conventions
* Function Names
    - Lower-case, with underscores to separate words. Separate libraries with ::. Parentheses are required after the function name. The keyword function is optional, but must be used consistently throughout a project.
* Variable Names
    - As for function names.
* Constants and Environment Variable Names
    - All caps, separated with underscores, declared at the top of the file.
* Source Filenames
    - Lowercase, with underscores to separate words if desired.
* Read-only Variables
    - Use readonly or declare -r to ensure they're read only.
* Use Local Variables
    - Declare function-specific variables with local. Declaration and assignment should be on different lines.
* Function Location
    - Put all functions together in the file just below constants. Don't hide executable code between functions.
* main
    - A function called main is required for scripts long enough to contain at least one other function.
    
### Calling Commands
* Checking Return Values
    - Always check return values and give informative return values.
* Builtin Commands vs. External Commands
    - Given the choice between invoking a shell builtin and invoking a separate process, choose the builtin.
        
### Conclusion
* Use common sense and BE CONSISTENT.
* If you are editing code, take a few minutes to look at the code around you and determine its style. If they use spaces around their if clauses, you should, too. If their comments have little boxes of stars around them, make your comments have little boxes of stars around them too.
* The point of having style guidelines is to have a common vocabulary of coding so people can concentrate on what you are saying, rather than on how you are saying it. We present global style rules here so people know the vocabulary. But local style is also important. If code you add to a file looks drastically different from the existing code around it, the discontinuity throws readers out of their rhythm when they go to read it. Try to avoid this.

### TODO
* None
