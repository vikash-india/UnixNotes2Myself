# Description: Latex Introduction

### About Latex
* The American computer scientist Leslie Lamport has developed the LATEX format.
* LaTeX is a synonym for LaTeX2e, which itself is the successor of LaTeX 2.09 (Obsolete).

### Latex Commands & Arguments
* There are three types of command names
    - The single characters # $ & ˜ _ ˆ % { } - all have special meanings.
    - The backslash character \ plus a single non-letter character. Example \$ to print the $ sign. All the above 
      special characters listed above have a corresponding two-character command to print them literally. 
    - The backslash character \ plus a sequence of letters, ending with the first non-letter. Example, \large to switch 
      to a larger typeface.
* Command names are case sensitive, so \large, \Large and \LARGE are distinct commands.
* The general syntax of commands is `\name[optional]{mandatory}` where 
    - The optional arguments are put into square brackets [ ].
    - The mandatory arguments are put into curly braces { }. 
    - A command may have several optional arguments, each one in its set of brackets in the specified sequence. 
    - If none of the optional arguments is used, the square brackets may be omitted. 
    - Any number of blanks, or even a single new line, may appear between the command name and the arguments, to improve 
      legibility.
    - Some commands have several mandatory arguments. Each one must be put into a { } pair and their sequence must be 
      maintained as given in the command description. Example `\rule[lift]{width}{height}`.
* Some commands have a so-called *-form in addition to their normal appearance. A * is added to their name to modify 
  their functionality somehow. Example, the `\section` command has a *-form `\section*` which, unlike the regular form, 
  does not print an automatic section number.

### Latex Environment
* An environment is initiated with the command \begin{name} and is terminated by \end{name}.
* An environment has the effect that the text within it is treated differently according to the environment parameters
* Example
    ```
    \begin{quote}
    text1 \small text2 \bfseries text3
    \end{quote}
    ```
* If the names of the environment in the \begin{..} \end{..} pair do not match, an error message will be generated.

### Latex Declarations
* A declaration is a command that changes the values or meanings of certain parameters or commands without printing any 
  text. 
* The effect of the declaration begins immediately and ends when another declaration of the same type is encountered.
* If the declaration occurs within an environment or a {...} pair, its scope extends only to the corresponding \end 
  command, or to the closing brace }.
* The declarations `\bfseries` and `\small` are examples of declarations without arguments.
* The declarations `\setlength{\parindent}{0.5cm}` are examples of declaration with arguments.
* The declarations `\pagenumbering{roman}` are examples of global declarations whose effects are not limited to the 
  current environment.
