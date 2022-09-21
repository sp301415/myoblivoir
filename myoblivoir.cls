\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myoblivoir}[2022/04/08 My Custom Extension of oblivoir]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{oblivoir}}
\ProcessOptions\relax
\LoadClass[a4paper, footnote, nonfrench, finemath]{oblivoir}

\usepackage{fapapersize}
\usefapapersize{*,*,30mm,30mm,30mm,30mm}

\usepackage{iftex}
\ifLuaTeX
    \hangulpunctuations=0
\fi
\ifLuaOrXeTeX
    \setmainhangulfont{Noto Serif CJK KR}
    \setsanshangulfont{Noto Sans CJK KR}
\fi

\PassOptionsToPackage{pdfencoding=auto}{hyperref}
\PassOptionsToPackage{dvipsnames}{xcolor}

\makechapterstyle{nokorean}{%
    \chapterstyle{default}
    \renewcommand{\prechapternum}{\chapnamefont Chapter}
    \renewcommand{\postchapternum}{}
}

\usepackage{ob-mathleading, oblivoir-misc}
