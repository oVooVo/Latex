\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{esheet}[2016/28/04]
\LoadClass[10pt]{scrartcl}[1996/10/31]

\RequirePackage{graphicx}
\RequirePackage{epstopdf}
\RequirePackage{xcolor}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{subcaption}
\RequirePackage{fancyhdr}
\RequirePackage{enumerate}
\RequirePackage{todonotes}
\RequirePackage[nodayofweek,level]{datetime}
\RequirePackage[bottom=2cm, top=2.5cm, left=2cm, right=2cm]{geometry}

% use \hcancel for canceling in math mode
% use \sout for canceling in text mode
\RequirePackage{calc}
\newsavebox\CBox
\newcommand\hcancel[2][0.5pt]{%
	\ifmmode\sbox\CBox{$#2$}\else\sbox\CBox{#2}\fi%
	\makebox[0pt][l]{\usebox\CBox}%  
	\rule[0.5\ht\CBox-#1/2]{\wd\CBox}{#1}}

% no page numbers
\pagenumbering{gobble}

\newcommand{\authorA}[1]{\def\authorA*{#1}}
\newcommand{\authorB}[1]{\def\authorB*{#1}}
\newcommand{\authorC}[1]{\def\authorC*{#1}}
\newcommand{\authorD}[1]{\def\authorD*{#1}}
\newcommand{\idA}[1]{\def\idA*{#1}}
\newcommand{\idB}[1]{\def\idB*{#1}}
\newcommand{\idC}[1]{\def\idC*{#1}}
\newcommand{\idD}[1]{\def\idD*{#1}}
\newcommand{\Date}[1]{\def\Date*{#1}}
\newcommand{\coursename}[1]{\def\coursename*{#1}}

% header on every page
\pagestyle{fancy}
\lhead{\begin{tabular}{cccc}
		\authorA* & \authorB* & \authorC* & \authorD*  \\ 
		\texttt{\idA*} & \texttt{\idB*} & \texttt{\idC*} & \texttt{\idD*}  \\
	\end{tabular}}
	\rhead{\begin{tabular}{rr} \coursename* \\ \Date* \end{tabular}}
	
\renewcommand{\thesection}{Exercise \arabic{section}} 
\renewcommand{\thefigure}{Figure \arabic{figure}}

% user defined commands
\setlength{\parindent}{0cm} % remove indentation at beginning of paragraph
\newcommand{\question}[1]{\textbf{#1}}
\newcommand{\R}{\mathbb R}
\newcommand{\Z}{\mathbb Z}
\newcommand{\E}{\mathbb E}
\renewcommand{\L}{\mathcal L}
\newcommand{\diff}{\mathop{}\!\mathrm{d}}
\newcommand{\var}{\mathop{}\!\mathrm{Var}}
\newcommand{\cov}{\mathop{}\!\mathrm{Cov}}
\newcommand{\argmax}{\mathop{\mathrm{arg\,max}}}
\newcommand{\argmin}{\mathop{\mathrm{arg\,min}}}
\renewcommand{\figurename}{}
\newcommand{\1}{\mathbf 1}
\newcommand{\old}{\text{old}}
\newenvironment{encases}{\begin{enumerate}[I. \text{Case:}]}{\end{enumerate}}

% allow long equations to line break
\allowdisplaybreaks
