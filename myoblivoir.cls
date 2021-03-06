\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myoblivoir}[2022/04/08 My Custom Extension of oblivoir]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{oblivoir}}
\ProcessOptions\relax
\LoadClass[a4paper, footnote, nonfrench, finemath]{oblivoir}

\usepackage{fapapersize}
\usefapapersize{*,*,30mm,30mm,30mm,30mm}

\usepackage{iftex}
\ifluatex
    \hangulpunctuations=0
\fi
