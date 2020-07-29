%
% Identification
%   The file says that it is a LATEX2ε package or class,
%   and gives a short description of itself.
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{proposal}[2020/03/15 NSF Proposal]


%
% Preliminary declarations
%   Here the file declares some commands and can also load
%   other files.  Usually these commands will be just those
%   needed for the code used in the declared options.
%

\LoadClass{article}

% Define a few colors
\input{colors.def}

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

% Margins (,showframe for testing)
\RequirePackage[margin=1.05in]{geometry}

% General styling
\setlength{\parindent}{0pt}   % no paragraph indentation
\setlength{\parskip}{0.8em}   % space between paragraphs

% Handle input and output of accented/special characters and modern fonts
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}
\RequirePackage[american]{babel}

% Tracking for fonts in PDF; stretch up to 20%; no shrink
\RequirePackage[tracking=true,stretch=20,shrink=0]{microtype}

% Context sensitive quotation facilities
\RequirePackage{csquotes}

% American Math Society math packages
\usepackage{amsmath,amssymb,amsfonts}

% Better looking tables
\RequirePackage{booktabs}
\renewcommand{\arraystretch}{1.2}
\RequirePackage{array}

% Format the title, author, and date
% \show\maketitle
\RequirePackage{titling}
\setlength{\droptitle}{-55pt} % 60 defined in article

\pretitle{\begin{center}\LARGE\bfseries}
\posttitle{\end{center}}

\preauthor{\vspace{-1.5em}\begin{center}\large}
\postauthor{\vspace{-1.5em}\end{center}}

\predate{}
\postdate{}
\date{}

% Change formatting of
% \part,\chapter,\section,\subsection,\subsubsection,\paragraph,\subparagraph
% \titleformat{〈command〉}[〈shape〉]{〈format〉}{〈label〉}{〈sep〉}{〈before-code〉}[〈after-code〉]
\RequirePackage{titlesec}
\titleformat{\section}{\titlerule\vspace{.8ex}\color{cprimaryblue}\Large\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\color{crose}\large\bfseries}{\thesubsection}{1em}{}
\newcommand{\periodafter}[1]{#1.}
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
\RequirePackage[binary-units=true]{siunitx}
\sisetup{detect-all}

% Inline paragraph lists
\RequirePackage{paralist}
\newenvironment{linline}{\begin{inparaenum}[\bfseries (1)]}{\end{inparaenum}}

\RequirePackage[pdftex]{graphicx}

% Improved subfigures
% \RequirePackage[caption=false,font=footnotesize]{subfig}
\RequirePackage[export]{adjustbox}
\RequirePackage{subcaption}

% filecolor for links to local files
\RequirePackage[pdftex,colorlinks,citecolor=cpurple,linkcolor=cgreen,urlcolor=cblue]{hyperref}

% Citations
% \cite, \parencite, \footcite, \textcite, \autocite
% \let\citename\relax
\RequirePackage[style=ieee,
  abbreviate=true, dateabbrev=true, isbn=true, doi=true, urldate=comp, url=true, eprint=false,
  maxbibnames=9, minbibnames=9, maxcitenames=1, mincitenames=1,
  backref=false, backend=biber, language=american, sortcites=true,
  autocite=inline% , labelnumber=true
  ]{biblatex}

% \renewcommand*{\bibfont}{\small}
% (Personally I'd use \small instead of \footnotesize.)

\widowpenalty10000
\clubpenalty10000

% Commands for easily changing formatting (e.g., italicize)
\newcommand{\etal}{et~al.}
\newcommand{\ie}{i.e.}
\newcommand{\eg}{e.g.}
