\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myoblivoir}[2022/04/08 My Custom Extension of oblivoir]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{oblivoir}}
\ProcessOptions\relax
\LoadClass[11pt, a4paper]{oblivoir}

\makeatletter

% LuaLaTeX-specific includes
\RequirePackage{iftex}
\ifluatex
\RequirePackage{luacode}
\hangulpunctuations=0
\fi

% Math Packages
\RequirePackage{amsmath, amssymb, amsthm, mathtools, tikz, pgfplots}
\pgfplotsset{compat=newest}
\allowdisplaybreaks{}

\@ifclasswith{oblivoir}{chapter}{\newtheorem{theorem}{Theorem}[chapter]}{\newtheorem{theorem}{Theorem}}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem*{corollary}{Corollary}

\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{problem}{문제}

\theoremstyle{remark}
\newtheorem*{remark}{Remark}

\usetikzlibrary{cd, calc}

% Document Structure
\RequirePackage{parskip}
\RequirePackage{fapapersize}
\usefapapersize{*,*,30mm,30mm,30mm,30mm}

% Graphics Packages
\RequirePackage{graphicx, float}

% Misc Packages
\RequirePackage[shortlabels]{enumitem}
\RequirePackage[cache=false]{minted}
\setminted{autogobble, breaklines, breakanywhere}
% https://github.com/gpoore/minted/issues/311
% todo: get breakaftersymbolpre to work
\newcommand{\codeinline}[1]{\Verb[breaklines, breakanywhere]{#1}}

\RequirePackage{hyperref, caption, tabularray}
\DefTblrTemplate{contfoot-text}{default}{}
\DefTblrTemplate{conthead-text}{default}{}
\DefTblrTemplate{contfoot}{default}{\UseTblrTemplate{contfoot-text}{default}}
\DefTblrTemplate{conthead}{default}{\UseTblrTemplate{conthead-text}{default}}

\DefTblrTemplate{caption-tag}{nocaption}{}
\DefTblrTemplate{caption-sep}{nocaption}{}
\DefTblrTemplate{caption-text}{nocaption}{}
\DefTblrTemplate{caption}{nocaption}{
    \UseTblrTemplate{caption-tag}{nocaption}
    \UseTblrTemplate{caption-sep}{nocaption}
    \UseTblrTemplate{caption-text}{nocaption}
}
\DefTblrTemplate{capcont}{nocaption}{
    \UseTblrTemplate{caption-tag}{nocaption}
    \UseTblrTemplate{caption-sep}{nocaption}
    \UseTblrTemplate{caption-text}{nocaption}
}

\newcommand*{\cleanlongtblr}{
    \SetTblrTemplate{caption}{nocaption}
    \SetTblrTemplate{capcont}{nocaption}
}

% Common Macros
\newcommand{\ZZ}{\ensuremath{\mathbb{Z}}}
\newcommand{\QQ}{\ensuremath{\mathbb{Q}}}
\newcommand{\RR}{\ensuremath{\mathbb{R}}}
\newcommand{\CC}{\ensuremath{\mathbb{C}}}

\DeclarePairedDelimiter\abs{\lvert}{\rvert}
\DeclarePairedDelimiter\norm{\lVert}{\rVert}
\DeclarePairedDelimiter\braket{\langle}{\rangle}

% Swap * and non-* version of PairedDelimiter
\let\oldabs\abs
\def\abs{\@ifstar{\oldabs}{\oldabs*}}
\let\oldnorm\norm 
\def\norm{\@ifstar{\oldnorm}{\oldnorm*}}
\let\oldbraket\braket 
\def\norm{\@ifstar{\oldbraket}{\oldbraket*}}

\makeatother