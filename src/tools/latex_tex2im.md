# Description: Tex2Im - Tool to Convert LaTeX Formulas to Images

### About tex2im
1. The tex2im is a simple tool that converts LaTeX formulas into high resolution pixmap graphics for inclusion in text 
   processors or presentations or other documents.
2. The tex2im can write files containing only the formula in latex mathmode and transform them to many different graphic 
   formats. The latex2html can do something similar, but only on whole documents. 
3. The tex2im is a simple bash script.
4. The tex2im doesn't require a document wrapper or \begin{equation}.
5. The tex2im supports stuff other than formulae (see the -n argument).
6. The tex2im easy to customize text and background colors, or to get a transparent background.
7. The tex2im can be customized with preferred default values using .tex2imrc file.
8. The tex2im requires a working LaTeX installation and ImageMagick (For convert tool).

#### Install tex2Im
1. Prerequisites: Make sure that the latex and convert (part of ImageMagic) should be installed.
2. Download the archive from http://www.nought.de/tex2im-1.8.tar.gz.
3. Uncompress it.
4. Place the contained script "tex2im" in a directory in your path. 
5. Make it executable.

#### Usage Example
```bash
# View help
tex2im -h

# Convert latex code directly to out.png
tex2im "\sum_{i=0}^5 x_i^2" 

# Convert latex file to png
# Note: Just plain latex mathmode code is required. The \begin{document} or \begin{equation} is NOT required. 
tex2im tex2im document.tex

# Use Yellow as background color and blue as text color
tex2im -b yellow -t blue document.tex
```
