%
% Identification
%   The file says that it is a LATEX2ε package or class,
%   and gives a short description of itself.
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{proposal}[2025/07/03 NSF Proposal]


%
% Preliminary declarations
%   Here the file declares some commands and can also load
%   other files.  Usually these commands will be just those
%   needed for the code used in the declared options.
%

\LoadClass[11pt]{article}


%
% Options
%   The file declares and processes its options.
%

\newif\if@proposal@nopagenumbers
\@proposal@nopagenumberstrue

\newif\if@proposal@tight
\@proposal@tightfalse

% Default to no numbering
\ExecuteOptions{nonumberpages}

\DeclareOption{nonumberpages}{\@proposal@nopagenumberstrue}
\DeclareOption{tight}{\@proposal@tighttrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


%
% More declarations
%   This is where the file does most of its work: declaring
%   new variables, commands and fonts; and loading other
%   files.
%

\renewcommand\normalsize{%
  % Font size and baseline skip
  \@setfontsize \normalsize {11.5} {13.6}%
  % Space above (and below) equations with stretch and shrink
  \abovedisplayskip 11\p@ \@plus 3\p@ \@minus 6\p@%
  \belowdisplayskip \abovedisplayskip%
  % Space above (and below) short equations with stretch
  \abovedisplayshortskip \z@ \@plus 3\p@%
  \belowdisplayshortskip 6.5\p@ \@plus 3.5\p@ \@minus 3\p@%
  % Ensure list spacing remains consistent with the new text size
  \let \@listi \@listI%
}

% Define a few colors
\RequirePackage{xcolor}
\definecolor{cprimaryblue}{HTML}{20438F}
\definecolor{cprimarygold}{HTML}{FFE121}
\definecolor{corange}{HTML}{E07923}
\definecolor{cblue}{HTML}{057DB0}
\definecolor{cpurple}{HTML}{976499}
\definecolor{cgreen}{HTML}{3CA66B}
\definecolor{cbeige}{HTML}{F2EFE2}
\definecolor{crose}{HTML}{CB5167}

% NOTE: add `showframe` for testing
\RequirePackage[letterpaper, margin=1.05in, footskip=20pt]{geometry}
% \RequirePackage[letterpaper, margin=1.05in, footskip=20pt, showframe]{geometry}

% General styling
\setlength{\parindent}{0pt}   % no paragraph indentation
\setlength{\parskip}{0.8em}   % space between paragraphs

% Handle input and output of accented/special characters and modern fonts
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}
\RequirePackage[american]{babel}

% Underline, strikeout, double underline, etc.
\RequirePackage[normalem]{ulem}

% Tracking for fonts in PDF; stretch up to 20%; no shrink
\RequirePackage[shrink=0]{microtype}

% Context sensitive quotation facilities
\RequirePackage{csquotes}

% American Math Society math packages
\RequirePackage{amsmath,amssymb,amsfonts}

% Better looking tables
\RequirePackage{booktabs}
\renewcommand{\arraystretch}{1.2}
\RequirePackage{array}
% TODO(ajc): what about tabularx, longtable, and ltxtable?

% % Table and figure numbering TODO: not working
% \renewcommand{\figurename}{Fig.}
% \renewcommand{\tablename}{Tab.}
% \addto\captionsenglish{\renewcommand{\figurename}{Fig.}}
% \addto\captionsenglish{\renewcommand{\tablename}{Tab.}}
% \renewcommand*\thefigure{\arabic{figure}}
% \renewcommand*\thetable{\arabic{table}}

% Format the title, author, and date
% \show\maketitle
\RequirePackage{titling}
% Distance above title
\setlength{\droptitle}{-55pt} % 60 defined in article

% In your class or preamble
\newcommand{\debugrule}{\noindent\textcolor{red}{\rule{\linewidth}{1pt}}}

\if@proposal@tight
  \pretitle{\begin{center}\LARGE\bfseries}
  \posttitle{\vspace{-0em}\end{center}}
  % \pretitle{\debugrule\begin{center}\LARGE\bfseries}
  % \posttitle{\vspace{-1em}\end{center}\debugrule}
\else
  \pretitle{\begin{center}\LARGE\bfseries}
  \posttitle{\end{center}}
\fi

% Consider doing this automatically:
%   https://tex.stackexchange.com/questions/391215/test-if-author-macro-is-empty
\if@proposal@tight
  \preauthor{\vspace{-1em}}
  \postauthor{\vspace{-1em}}
  \author{}
\fi

% TODO: change for supplementary documents?
\predate{} % or \postdate{\vspace{-2em}}
\postdate{}
\date{}

\newcommand{\periodafter}[1]{#1.}

\RequirePackage{titlesec}

% \titleformat{command}[shape]{format}{label}{sep}{before-code}[after-code]
%   command : \part,\chapter,\section,\subsection,\subsubsection,\paragraph,\subparagraph
%   shape   : paragraph shape (hang, block, display, runin, leftmargin, rightmargin, drop, wrap, frame)
%   format  : format applied to the whole title—label and text
%   label   : label for the command (e.g., \thesection)
%   sep     : horizontal separation between label and title body and must be a length
%   before  : code preceding the title body
%   after   : code following the title body
\if@proposal@tight
  % \titleformat{\section}{\vspace{.8ex}\color{cprimaryblue}\Large\bfseries}{\thesection}{1em}{}
  \titleformat{\section}{\color{cprimaryblue}\Large\bfseries}{\thesection}{1em}{}
\else
  \titleformat{\section}{\titlerule\vspace{.8ex}\color{cprimaryblue}\Large\bfseries}{\thesection}{1em}{}
\fi
\titleformat{\subsection}{\color{crose}\large\bfseries}{\thesubsection}{1em}{}
\titleformat{\paragraph}[runin]{\normalfont\normalsize\bfseries}{\theparagraph}{1em}{\periodafter}

% \titlespacing*{command}{left}{before-sep}{after-sep}[right-sep]
%   left   : left margin
%   before : vertical space before the title
%   after  : separation between title and text
%   right  : possibility of increasing the right margin
% "*n" is equivalent to "n ex"
\if@proposal@tight
  \titlespacing{\section}{0pt}{*0}{*0}
  % \titlespacing*{\section}{0pt}{.1ex plus .1ex minus .1ex}{.1ex}
  \titlespacing*{\subsection}{0pt}{.1ex}{.1ex}
  \titlespacing*{\paragraph}{0pt}{0pt}{.1ex}
\else
  \titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{1ex}
  \titlespacing*{\subsection}{0pt}{1ex}{1ex}
  \titlespacing*{\paragraph}{0pt}{0pt}{1ex}
\fi

% Callout boxes
\RequirePackage{mdframed}
\newmdenv[%
    skipabove=2\parskip,%
    linecolor=cprimarygold,%
    linewidth=2pt,%
    leftmargin=0.5cm,%
    rightmargin=0.5cm,%
    topline=false,%
    bottomline=false,%
    backgroundcolor=cbeige!32%
]{callout}

% Units (include binary and use current font)
% Better looking numbers (use S in tabular and '{' '}' around header)
\RequirePackage{siunitx}
% \sisetup{round-mode=places,round-precision=3}

% Inline paragraph lists
% \RequirePackage{paralist}
% \newenvironment{linline}{\begin{inparaenum}[\bfseries (1)]}{\end{inparaenum}}

% Itemize and enumerate spacing
\RequirePackage[inline, shortlabels]{enumitem}
\setlist[itemize]{topsep=0pt}

\RequirePackage[pdftex]{graphicx}

% From pandoc template
\makeatletter
\def\maxwidth{\ifdim\Gin@nat@width>\linewidth\linewidth\else\Gin@nat@width\fi}
\def\maxheight{\ifdim\Gin@nat@height>\textheight\textheight\else\Gin@nat@height\fi}
\makeatother
% Scale images if necessary, so that they will not overflow the page
% margins by default, and it is still possible to overwrite the defaults
% using explicit options in \includegraphics[width, height, ...]{}
\setkeys{Gin}{width=\maxwidth,height=\maxheight,keepaspectratio}
% Set default figure placement to htbp
\makeatletter
\def\fps@figure{htbp}
\makeatother

% Improved captions
\RequirePackage[
  font=footnotesize,
  labelfont=bf,
  singlelinecheck=false,
  labelsep=period,
  skip=2pt
]{caption}

% Improved subfigures
\RequirePackage[export]{adjustbox}
\RequirePackage{subcaption}
\RequirePackage{wrapfig}

% Citations
% \cite, \parencite, \footcite, \textcite, \autocite
% \let\citename\relax
\RequirePackage{xpatch}
\RequirePackage[
  style=ieee,
  abbreviate=true,
  dateabbrev=true,
  isbn=true,
  doi=true,
  urldate=comp,
  url=true,
  eprint=false,
  maxbibnames=9,
  minbibnames=9,
  maxcitenames=1,
  mincitenames=1,
  backref=false,
  backend=biber,
  language=american,
  sortcites=true,
  autocite=inline
  % , labelnumber=true
]{biblatex}

% filecolor for links to local files
\RequirePackage[
  colorlinks,
  citecolor=cpurple,
  linkcolor=cgreen,
  urlcolor=cblue
]{hyperref}

% \renewcommand*{\bibfont}{\small}

% Remove page numbers from all pages (include title pages)
\if@proposal@nopagenumbers
  \RequirePackage{nopageno}
\fi

\widowpenalty10000
\clubpenalty10000
\tolerance9000

% Commands for easily changing formatting (e.g., italicize)
\newcommand{\etal}{et~al.}
\newcommand{\ie}{i.e.}
\newcommand{\eg}{e.g.}
\newcommand{\pseudodot}{{\lower 2.4pt\hbox{$\cdot$}}} % For URL-like strings that are not URLs



% % From: https://github.com/nsf-open/nsf-proposal-latex-samples/blob/master/nsf-sample-1.tex
% \setlength{\baselineskip}{12.6pt} % in text mode
% \setlength{\normalbaselineskip}{12.6pt} % in math mode

% % From: https://github.com/nsf-open/nsf-proposal-latex-samples/blob/master/nsf-sample-2.tex
% \newcommand\Z{{\mathbb Z}}
% \newcommand\Q{{\mathbb Q}}
% \newcommand\R{{\mathbb R}}
% \newcommand\C{{\mathbb C}}
% \newcommand\F{{\mathbb F}}
% \newcommand{\G}{{\mathcal{G}}}
% \newcommand{\T}{{\mathcal{T}}}
% \newcommand\Hom{\text{Hom}}
% \newcommand\rank{\mathop{\text{rank}}}
% \let\tensor=\otimes

% % From: https://github.com/nsf-open/nsf-proposal-latex-samples/blob/master/nsf-sample-3.tex
% \renewcommand{\footnotesize}{\small\spaceskip4pt plus1.5pt}
