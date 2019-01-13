# Description: Bash Scripting Best Practices

### Shell Script Order and Checklist
* Shebang
* Comment and File Header
* Global Variables
* Functions
    * Use local variables.
* Main Script Content
* Exit with an exit status.
    * Use exit status at various exit points.
    
### Variables
* Use UPPERCASE for variable names.
* Do not use space on either side of equal to while assigning variables.
* Use curly braces to print variables. Eg ${HELLO}World
* Use quotes to define variables.
* Keep the variables inside a function as local.
* Use $() format over backtick (`) format to asisgn command output into a variable.

### TODO
* Add ShellCheck to Pycharm and Vim

