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

\DeclareOption{nonumberpages}{\@proposal@nopagenumberstrue}
\DeclareOption{numberpages}{\@proposal@nopagenumbersfalse}

\ExecuteOptions{nonumberpages} % Default to no numbering

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


%
% More declarations
%   This is where the file does most of its work: declaring
%   new variables, commands and fonts; and loading other
%   files.
%

% Grabbed original definition of `normalsize` and increased the fontsize from \@xipt to 11.5
\renewcommand\normalsize{%
  \@setfontsize \normalsize {11.5} {13.6}%
  \abovedisplayskip 11\p@ \@plus 3\p@ \@minus 6\p@ %
  \abovedisplayshortskip \z@ \@plus 3\p@ %
  \belowdisplayshortskip 6.5\p@ \@plus 3.5\p@ \@minus 3\p@ %
  \belowdisplayskip \abovedisplayskip \let \@listi \@listI}

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
% \RequirePackage[tracking=true,stretch=20,shrink=0]{microtype}
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

\pretitle{\begin{center}\LARGE\bfseries}
\posttitle{\end{center}}

% \preauthor{\vspace{-1.5em}\begin{center}\large}
% \postauthor{\vspace{-1.5em}\end{center}}

\predate{}
\postdate{}
\date{}

% Change formatting of
% \part,\chapter,\section,\subsection,\subsubsection,\paragraph,\subparagraph
% \titleformat{〈command〉}[〈shape〉]{〈format〉}{〈label〉}{〈sep〉}{〈before-code〉}[〈after-code〉]
\newcommand{\periodafter}[1]{#1.}
\RequirePackage{titlesec}
\titleformat{\section}{\titlerule\vspace{.8ex}\color{cprimaryblue}\Large\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\color{crose}\large\bfseries}{\thesubsection}{1em}{}
\titleformat{\paragraph}[runin]{\normalfont\normalsize\bfseries}{\theparagraph}{1em}{\periodafter}

% \titlespacing*{〈command〉}{〈left〉}{〈before-sep〉}{〈after-sep〉}[〈right-sep〉]
% \titlespacing*{\section}      {0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
% \titlespacing*{\subsection}   {0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
% \titlespacing*{\paragraph}    {0pt}{3.25ex plus 1ex minus .2ex}{1em}
\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{1ex}
\titlespacing*{\subsection}{0pt}{1ex}{1ex}
\titlespacing*{\paragraph}{0pt}{0pt}{1ex}

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
\RequirePackage{paralist}
\newenvironment{linline}{\begin{inparaenum}[\bfseries (1)]}{\end{inparaenum}}

% Tighter lists (from Pandoc)
\providecommand{\tightlist}{\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

\RequirePackage{graphicx}

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
