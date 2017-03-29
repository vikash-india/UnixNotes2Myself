# Description: Pandoc Usage Notes on Ubuntu

### Use pandoc as a Filter
```bash
# Use pandoc as a Filter
pandoc

# Type the following
Hello *pandoc*!

- one
- two

# Hit Ctrl-D to finish

# When pandoc is invoked without specifying any input files, it operates as a filter, taking input from the terminal and 
# sends its output back to the terminal.

# By default, input is interpreted as pandoc markdown, and output is HTML 4.
```

### Convert a File From One Format to Another
```bash
# Use the -f or --from switch to specify the input format.
# Use the -t or --to or -w or --write switch to specify the output format.
P001_HtmlDocument.html
# The output will be written to stdout.
pandoc P001_HtmlDocument.html -f html -t markdown 

# Use the -o or --output switch to specify the output filepath. The filepath could be relative or absolute.
pandoc P001_HtmlDocument.html -f html -t markdown -o P001_HtmlDocument_Output.md

# Use the -s switch to create a 'standalone' file, with a header and footer, not just a fragment.
pandoc P001_HtmlDocument.html -f html -t markdown -s -o P001_HtmlDocument_Output.md
```

### Conversion Examples
```bash
# Convert LaTeX to Pandoc Markdown
pandoc P002_LatexDocument.tex -f latex -t markdown -s -o P002_LatexDocument_Output.md

# Convert HTML to PDF
# Note: The -t should specify latex while the file extension should be .pdf.
pandoc P001_HtmlDocument.html -f html -t latex -s -o P001_HtmlDocument_Output.pdf

# Convert LaTeX to PDF
pandoc P002_LatexDocument.tex -f latex -t latex -s -o P002_LatexDocument_Output.pdf
```

