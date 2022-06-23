%
% Identification
%   The file says that it is a LATEX2ε package or class,
%   and gives a short description of itself.
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{supplementary}[2022/06/23 NSF Supplementary]

%
% Preliminary declarations
%   Here the file declares some commands and can also load
%   other files.  Usually these commands will be just those
%   needed for the code used in the declared options.
%

\LoadClass{article}

%
% Options
%   The file declares and processes its options.
%

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%
% More declarations
%   This is where the file does most of its work: declaring
%   new variables, commands and fonts; and loading other
%   files.
%

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

% Margins (",showframe" for testing)
\RequirePackage[paperwidth=8.5in, paperheight=11in, margin=1.05in, footskip=20pt]{geometry}

% General styling
\setlength{\parindent}{0pt}   % no paragraph indentation
\setlength{\parskip}{0.8em}   % space between paragraphs

% Handle input and output of accented/special characters and modern fonts
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}
\RequirePackage[american]{babel}

% Underline, strikeout, double underline, etc.
\usepackage[normalem]{ulem}

% Tracking for fonts in PDF; stretch up to 20%; no shrink
% \RequirePackage[tracking=true,stretch=20,shrink=0]{microtype}
\RequirePackage[shrink=0]{microtype}

% Context sensitive quotation facilities
\RequirePackage{csquotes}

% American Math Society math packages
\usepackage{amsmath,amssymb,amsfonts}

% Better looking tables
\RequirePackage{booktabs}
\renewcommand{\arraystretch}{1.2}
\RequirePackage{array}
% TODO(ajc): what about tabularx, longtable, and ltxtable?

% Table and figure numbering
\renewcommand{\figurename}{Fig.}
\renewcommand{\tablename}{Tab.}
\addto\captionsenglish{\renewcommand{\figurename}{Fig.}}
\addto\captionsenglish{\renewcommand{\tablename}{Tab.}}
\renewcommand*\thefigure{\arabic{figure}}
\renewcommand*\thetable{\arabic{table}}

% Format the title, author, and date
% \show\maketitle
\RequirePackage{titling}
\setlength{\droptitle}{-55pt} % 60 defined in article

\pretitle{\begin{center}\LARGE\bfseries}
\posttitle{\end{center}}

\preauthor{}%\vspace{-1.5em}\begin{center}\large}
\postauthor{}%\vspace{-1.5em}\end{center}}
\author{}

\predate{}
\postdate{\vspace{-2em}}
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
\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{0pt}
\titlespacing*{\subsection}{0pt}{0pt}{0pt}
\titlespacing*{\paragraph}{0pt}{0pt}{1em}

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
\sisetup{round-mode=places,round-precision=3}

% Inline paragraph lists
\RequirePackage{paralist}
\newenvironment{linline}{\begin{inparaenum}[\bfseries (1)]}{\end{inparaenum}}

\RequirePackage{graphicx}

% Improved captions
\usepackage[
  font=footnotesize,
  labelfont=bf,
  singlelinecheck=false,
  labelsep=period,
  skip=2pt
]{caption}

% Improved subfigures
% \RequirePackage[caption=false,font=footnotesize]{subfig}
\RequirePackage[export]{adjustbox}
\RequirePackage{subcaption}
\RequirePackage{wrapfig}

% filecolor for links to local files
\RequirePackage[
  colorlinks,
  citecolor=cpurple,
  linkcolor=cgreen,
  urlcolor=cblue
]{hyperref}

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

% \renewcommand*{\bibfont}{\small}
% (Personally I'd use \small instead of \footnotesize.)

% Remove page numbers from all pages (include title pages)
\RequirePackage{nopageno}

\widowpenalty10000
\clubpenalty10000

% Commands for easily changing formatting (e.g., italicize)
\newcommand{\etal}{et~al.}
\newcommand{\ie}{i.e.}
\newcommand{\eg}{e.g.}
