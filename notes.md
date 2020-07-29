figure out fancyhdr

no urls
font size
figure font size and style
Proposers are advised that FastLane does not automatically paginate a proposal. Each section of the proposal that is uploaded as a file must be individually paginated prior to being uploaded to the electronic system.

different sections of proposal (BPC, DMP, etc.)
pagination for references

full author lists in references

# NSF Requirements
- Use one of the following fonts identified below:
    - Arial (not Arial Narrow) (Macintosh users also may use Helvetica and Palatino typefaces) Courier New, or Palatino Linotype at a font size of 10 points or larger;
    - Times New Roman at a font size of 11 points or larger; or
    - Computer Modern family of fonts at a font size of 11 points or larger.
    A font size of less than 10 points may be used for mathematical formulas or equations, figures, tables or diagram captions and when using a Symbol font to insert Greek letters or special characters. Other fonts not specified above, such as Cambria Math, may be used for mathematical formulas, equations, or when inserting Greek letters or special characters. PIs are cautioned, however, that the text must still be readable.
- No more than six lines of text within a vertical space of one inch.
- Margins, in all directions, must be at least an inch. No proposer-supplied information may appear in the margins.
- Paper size must be no larger than standard letter paper size (8 1/2 by 11").

latex document class
- colored reference numbers (blue) (sorted, all numbers showing)
- page numbers specific to nsf
- task specific headings (T1   Name; T1.1   Name; etc.) (or objective or ...)
- callout diagram on first or second page
- Project Description - 2 of 15
- todo: citation styling with biblatex [1][2][3][55]
- todonotes

Resources
- https://www.tug.org/levels.html
- https://en.wikibooks.org/wiki/LaTeX/PGF/TikZ
- https://gking.harvard.edu/files/lshort2.pdf
- https://www.math.cmu.edu/~gautam/sj/blog/20130930-tex-margins.html
- http://mirrors.ibiblio.org/CTAN/info/l2tabu/english/l2tabuen.pdf

Terms:
- document markup
- design interface
- programming interface

Class Structure
- Identification
    + The file says that it is a LATEX2ε package or class, and gives a short description of itself.
- Preliminary declarations
    + Here the file declares some commands and can also load other files.  Usually these commands will be just those needed for the code used in the declared options.
- Options
    + The file declares and processes its options.
- More declarations
    + This is where the file does most of its work: declaring new variables, commands and fonts; and loading other files.
