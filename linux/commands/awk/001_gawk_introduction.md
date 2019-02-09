# Description: The gawk - Pattern Scanning and Processing Language

### The awk Tool
- Awk is a programming language designed for text processing and typically used as a data extraction and reporting 
  tool.
- AWK was created at Bell Labs in the 1977, and its name is derived from the surnames of its authors - Alfred Aho, 
  Peter Weinberger, and Brian Kernighan.
- Awk is a Turing-complete language.

### The gawk Tool
- AWK was significantly revised and expanded in 1985-88, resulting in the GNU AWK implementation written by Paul Rubin, 
  Jay Fenlason, and Richard Stallman, and released in 1988.
- GNU AWK has been maintained solely by Arnold Robbins since 1994.
- All Linux system has gawk available by default. The awk on linux system is an alias to gawk.

### The pgawk Tool - A gawk Profiler
- The pgawk is the profiling version of gawk. 
- It is identical in every way to gawk, except that programs run more slowly, and it automatically produces an execution 
  profile in the file awkprof.out when done.

### Commandline Usage of awk
- The syntax is `awk '/pattern/ {actions }' path/to/file`
- Example: `awk '/Line 1/ {print }' path/to/file`

### TODO
- Add `#!/usr/bin/awk -f` at the beginning of the file to run the script directly. Explore. 
