# LaTeX Classes

These are LaTeX classes for my cover letters and my NSF proposals. The NSF proposal class should be valid with respect to [Proposal & Award Policies & Procedures Guide (PAPPG)](https://www.nsf.gov/policies/pappg/24-1) (specifically [PAPPG Chapter II](https://www.nsf.gov/policies/pappg/24-1/ch-2-proposal-preparation)). Suggestions welcome.

Last updated: July 2025

## Examples

- [Cover Letter](https://github.com/anthonyjclark/latex-classes/blob/master/examples/coverletter/build/coverletter.pdf)
- [NSF Proposal](https://github.com/anthonyjclark/latex-classes/blob/master/examples/proposal/build/proposal.pdf)

Build examples by navigating to the subdirectories and running `make`.

## Styles and Opinions

- [Paper tips and tricks](https://github.com/Wookai/paper-tips-and-tricks) (including list at bottom)
- [Package Suggestions from StackExchange](https://tex.stackexchange.com/questions/553/what-packages-do-people-load-by-default-in-latex)
- [(Unofficial) NSF LaTeX Samples](https://github.com/nsf-open/nsf-proposal-latex-samples)

## Development Notes

- check fonts with `pdffonts`
- figure out `fancyhdr`
- no urls
- figure font size and style
- different sections of proposal (BPC, DMP, etc.)
- pagination for references
- full author lists in references
- colors.def is not used for the proposal class
- add options for debugging (e.g., `showframe`)

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
- todo: citation styling with biblatex `[1][2][3][55]`
- todonotes

Resources:

- [LaTeX vs. MiKTeX: The levels of TeX](https://www.tug.org/levels.html)
- [LaTeX/PGF/TikZ](https://en.wikibooks.org/wiki/LaTeX/PGF/TikZ)
- [The Not So Short Introduction to LATEX 2ε](https://gking.harvard.edu/files/lshort2.pdf)
- [LaTeX headers to maximise space](https://www.math.cmu.edu/~gautam/sj/blog/20130930-tex-margins.html)
- [An essential guide to LATEX 2ε usage](http://mirrors.ibiblio.org/CTAN/info/l2tabu/english/l2tabuen.pdf)

## Snippets

Adding co-PIs:

```latex
\author{Anthony J. Clark, Pomona College\\
        \small Co-PI(s): Co-PI Name(s), Co-PI Affiliation(s) (Optional) \\
        \small email}
```

Inline lists (like paralist):

```latex
\begin{enumerate*}[(1), font=\bfseries]
    \item Eu
    \item in
    \item ur
    \item ullamco
\end{enumerate*}
```
