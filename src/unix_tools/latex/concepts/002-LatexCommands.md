# Description: Latex Commands Reference

### Common Latex Commands
```
# Versions Info
tex -v                  # 3.14159265. Get the version of Tex
latex -v                # 3.14159265-2.6-1.40.16. Get the version of Latex
pdftex -v               # 3.14159265-2.6-1.40.16. Get the version of pdftex

# Documentation
texdoc color            # Displays the manual for the 'color' package. 
                        # The PDF manuals for Tex-live are available on the path /usr/share/doc/texlive-doc/latex.
                        # The PDF manuals are also available online at the URL http://texdoc.net/.

# Compilation Commands
tex &latex src          # Outputs .dvi file. Run tex with format latex for the source file src.tex WITHOUT EXTENSION. 
latex src               # Outputs .dvi file. Shortcut to tex &latex command above.
xdvi src                # Preview src.dvi before sending it to a printer.
dvips src               # Outputs postscript file src.ps from src.dvi.
pdftex &latex src       # Outputs .pdf directly from .tex without the intermediate file .dvi. Alternative to Tex.
pdflatex src            # Same as above. Shortcut for pdftex &latex src

# The Logo Commands
{\LaTeX}                # Outputs the LaTeX logo.
{\LaTeX{}}              # Outputs the LaTeX logo followed by space. Insert a space after a command that consists only of 
                        # a name, either add an empty structure {} or a space command (\ and blank) after the command.
{\TeX}                  # Outputs the TeX logo.
{\LaTeXe}               # Outputs the LATEX 2ε logo.
```

### TODO
* None
