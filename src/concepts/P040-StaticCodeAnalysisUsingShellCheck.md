# Description: ShellCheck - Static Code Analysis Tool

### Introduction
* ShellCheck is a static code analysis tool for shell scripts.
* ShellCheck
    - [Offical Website](https://www.shellcheck.net/).
    - [GitHub](https://github.com/koalaman/shellcheck)
    - [List of Code Analysis by ShellCheck](https://github.com/koalaman/shellcheck/blob/master/README.md#user-content-gallery-of-bad-code)
* Uses of ShellCheck
    - ShellCheck shows syntax issues that cause a shell to give cryptic error messages.
    - ShellCheck shows intermediate level semantic problems that cause a shell to behave strangely and 
      counter-intuitively.
    - ShellCheck shows subtle caveats, corner cases and pitfalls that may cause an advanced user's otherwise working 
      script to fail under future circumstances.

### Installation
``` 
# Install Using Terminal
sudo apt-get install shellcheck
```
### Usage
```
# Use from Terminal
shellcheck /path/to/script
```

### TODO
* Integrate ShellCheck with Vim or PyCharm.
* Integrate ShellCheck with Gitlab CI.
