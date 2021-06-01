%
% Identification
%   The file says that it is a LATEX2ε package or class,
%   and gives a short description of itself.
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coverletter}[2020/03/15 Cover Letter]


%
% Preliminary declarations
%   Here the file declares some commands and can also load
%   other files.  Usually these commands will be just those
%   needed for the code used in the declared options.
%

\LoadClass{article}[11pt]

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

% Default values for article
% margins taken from 1" upper left corner
% paperwidth=614
% paperheight=794
% textwidth=469
% textheight=650
% oddsidemargin=0pt

% Margins (,showframe for testing)
\RequirePackage[margin=1.25in]{geometry}

% General styling
\setlength{\parindent}{0pt}   % no paragraph indentation
\setlength{\parskip}{0.8em}   % space between paragraphs

% Handle input and output of accented/special characters and modern fonts
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}
\RequirePackage[american]{babel}

% Tracking for fonts in PDF; stretch and shrink up to 10%
\RequirePackage[tracking=true,stretch=10,shrink=10]{microtype}

% Context sensitive quotation facilities
\RequirePackage{csquotes}

% Inline paragraph lists
\RequirePackage{paralist}
\newenvironment{linline}{\begin{inparaenum}[\bfseries (1)]}{\end{inparaenum}}

% Itemize and enumerate spacing
\RequirePackage{enumitem}
\setlist[itemize]{topsep=0pt}

\RequirePackage[pdftex]{graphicx}

% filecolor for links to local files
\RequirePackage[pdftex,colorlinks,citecolor=cpurple,linkcolor=cgreen,urlcolor=cblue]{hyperref}

\RequirePackage{url}

\widowpenalty10000
\clubpenalty10000

\newcommand{\name}[1]{\def\clname{#1}}
\newcommand{\signature}[1]{\def\clsignature{#1}}
\renewcommand{\title}[1]{\def\cltitle{#1}}
\newcommand{\address}[1]{\def\claddress{#1}}
\newcommand{\email}[1]{\def\clemail{#1}}
\newcommand{\phone}[1]{\def\clphone{#1}}
\newcommand{\web}[1]{\def\clweb{#1}}
\newcommand{\logo}[1]{\def\cllogo{#1}}
\newcommand{\sigimage}[1]{\def\clsigimage{#1}}

\newcommand{\recipient}[1]{\def\clrecipient{#1}}

\newcommand{\subject}[1]{\def\clsubject{#1}}
\newcommand{\opening}[1]{\def\clopening{#1}}
\newcommand{\closing}[1]{\def\clclosing{#1}}

\newenvironment{cl}{
\begin{titlepage}
\begin{minipage}{0.65\textwidth}
    \includegraphics[height=5\baselineskip]{\cllogo}
\end{minipage}\hfill%
\begin{minipage}{0.35\textwidth}
    \raggedleft
    \clname\\
    \cltitle\\
    \claddress
\end{minipage}

\medskip

\hfil\href{mailto:\clemail}{\nolinkurl{\clemail}}\hfil|\hfil\href{tel:\clphone}{\ttfamily{\clphone}}\hfil|\hfil\url{\clweb}

\textcolor{cprimaryblue}{\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}}

\clrecipient

\medskip

\begin{minipage}{0.5\textwidth}\bfseries\clsubject\end{minipage}\hfill%
\begin{minipage}{0.5\textwidth}\raggedleft\today\end{minipage}

\smallskip

\clopening

\smallskip
}{
\smallskip

\clclosing,

\smallskip

\includegraphics[height=1cm]{\clsigimage}

\smallskip

\clsignature

\end{titlepage}}
