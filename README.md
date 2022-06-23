# LaTeX Classes

These are LaTeX classes for my cover letters and my NSF proposals. The NSF proposal class should be valid with respect to [Proposal & Award Policies & Procedures Guide (PAPPG)](https://www.nsf.gov/pubs/policydocs/pappg22_1/index.jsp) (specifically [PAPPG Chapter II](https://www.nsf.gov/pubs/policydocs/pappg22_1/pappg_2.jsp)). Suggestions welcome.

Last updated: June 2022

## Examples

- [Cover Letter](https://github.com/anthonyjclark/latex-classes/blob/master/examples/coverletter/coverletter.pdf)
- [NSF Proposal](https://github.com/anthonyjclark/latex-classes/blob/master/examples/proposal/proposal.pdf)

Build examples by navigating to the subdirectories and running `make`.

## Styles and Opinions

- [Paper tips and tricks](https://github.com/Wookai/paper-tips-and-tricks)
  - Including list at bottom
- [Package Suggestions](https://tex.stackexchange.com/questions/553/what-packages-do-people-load-by-default-in-latex)

# Development Notes

**You can ignore these random bits of text.**

- check fonts with `pdffonts`
- figure out `fancyhdr`
- no urls
- figure font size and style
- Proposers are advised that FastLane does not automatically paginate a proposal. Each section of the proposal that is uploaded as a file must be individually paginated prior to being uploaded to the electronic system.

different sections of proposal (BPC, DMP, etc.)
pagination for references

full author lists in references

## NSF Requirements

- research.gov will automatically paginate; leave out page numbering
- fonts
  - Arial, Courier New, Palatino Linotype; ≥ 10 pt
  - Times New Roman; ≥ 11 pt
  - Computer Modern family; ≥ 11 pt
  - can use ≤ 10 pt for formulas, equations, figures, tables, captions when using a symbol font
- no more than six lines of text within a vertical space of one inch
- ≥ 1 inch margins (nothing allowed in margins)
- 8.5 by 11" paper size

LaTeX document class:

- colored reference numbers (blue) (sorted, all numbers showing)
- page numbers specific to NSF
- task specific headings (T1   Name; T1.1   Name; etc.) (or objective or ...)
- callout diagram on first or second page
- Project Description - 2 of 15
- todo: citation styling with biblatex [1][2][3][55]
- todonotes

Resources:

- https://www.tug.org/levels.html
- https://en.wikibooks.org/wiki/LaTeX/PGF/TikZ
- https://gking.harvard.edu/files/lshort2.pdf
- https://www.math.cmu.edu/~gautam/sj/blog/20130930-tex-margins.html
- http://mirrors.ibiblio.org/CTAN/info/l2tabu/english/l2tabuen.pdf

## With Page Numbers

I removed these when the NSF moved to research.gov and requested the omission of pagination

```latex
% \usepackage{fancyhdr}
% \usepackage{lastpage}

% \pagestyle{fancy}
% \fancyhf{}
% \renewcommand{\headrulewidth}{0pt}
% \cfoot{\footnotesize Project Description---Page \thepage{} of \pageref*{LastPage}}

% \addto\extrasenglish{\def\figureautorefname{Fancy figure}}
% \usepackage{minted}

% Better handling of links
% \usepackage{url}

% Reset page numbering to 1.  This is helpful, since the text can only
% be 15 pages (unless otherwise specified, see individual solicitations),
% and reviewers will want to believe we've kept it within those limits
% \newcommand{\newsection}[1]{\pagenumbering{arabic}\renewcommand{\thepage}{#1--\arabic{page}}}

% This line was under \maketitle
% \thispagestyle{fancy}
```
