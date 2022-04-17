\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myoblivoir}[2022/04/08 My Custom Extension of oblivoir]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{oblivoir}}
\ProcessOptions\relax
\LoadClass[11pt, a4paper, footnote, nonfrench, finemath]{oblivoir}

\makeatletter

\usepackage{fapapersize}
\usefapapersize{*,*,30mm,30mm,30mm,30mm}

\usepackage{iftex}
\ifluatex
    \hangulpunctuations=0
\fi

\@ifclasswith{oblivoir}{chapter}{
    \usepackage[chapter]{mypreamble}
}{
    \usepackage{mypreamble}
}

\makeatother
