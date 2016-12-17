% Copyright 2016 张梦磊
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{zmlnote}
              [2016/12/16 v1.0
Standard LaTeX document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[a4paper, 10pt]{article}
\RequirePackage{ctex}
\RequirePackage[left=2cm, right=2cm, top=2cm, bottom=2cm]{geometry}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{tikz}
\definecolor{bg}{rgb}{0.95, 0.95, 0.95}
\RequirePackage{mdframed}
\RequirePackage{tcolorbox}
\tcbuselibrary{documentation,minted}
\tcbset{listing engine=minted}
% 定义 bash 代码环境的缩写
% \newminted[bash]{bash}{bgcolor=bg}
% \newminted[python]{python}{}
\RequirePackage{xspace}
\RequirePackage[font=small,skip=0pt]{caption}
\RequirePackage{fontspec}
\setmonofont{Source Code Pro}

\RequirePackage{parskip} % 防止段落缩进

\RequirePackage{enumitem}
\setlist{%
    topsep=0.3em,
    partopsep=0pt,
    itemsep=0ex plus 0.1ex,
    parsep=0pt,
    leftmargin=1.5em,
    rightmargin=0em,
    labelsep=0.5em,
    labelwidth=2em
}

\RequirePackage{hyperref}
\AtBeginDocument{%
    \hypersetup{%
        colorlinks=true,
        bookmarksnumbered=true,
        filecolor=blue%
    }
}


\def\manualversion{V1.0}

\author{张梦磊}
\date{\manualversion\quad\today}

\newcommand{\bftt}[1]{\textbf{\texttt{#1}}}
\newcommand{\cmd}[1]{\texttt{#1}}
\newcommand{\dir}[1]{\texttt{#1}}
\newcommand{\file}[1]{\texttt{#1}}
\newcommand{\option}[1]{\texttt{#1}}

\newenvironment{documentDescription}{\begin{list}{}{%
  \setlength{\leftmargin}{0pt}%
  \setlength{\itemindent}{0pt}%
  \setlength{\itemsep}{0pt}%
  \setlength{\parsep}{0pt}%
  \setlength{\rightmargin}{0pt}%
  }\item}{\end{list}}

\AtBeginDocument{
    \maketitle
    \tableofcontents
    \begin{documentDescription}
}
\AtEndDocument{
    \end{documentDescription}
}

% https://github.com/gpoore/minted/issues/108
\newenvironment{mdminted}[1]{%
    \VerbatimEnvironment
    \begin{mdframed}[linecolor=black, topline=false, bottomline=false,
                    leftline=false, rightline=false, backgroundcolor=bg,
                    userdefinedwidth=\textwidth]
    \begin{minted}{#1}}{\end{minted}\end{mdframed}}

\endinput