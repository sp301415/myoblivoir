\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myoblivoir}[2022/04/08 My Custom Extension of oblivoir]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{oblivoir}}
\ProcessOptions\relax
\LoadClass[a4paper,footnote,finemath]{oblivoir}

\usepackage{fapapersize}
\usefapapersize{*,*,30mm,30mm,30mm,30mm}

\usepackage{iftex}
\ifLuaTeX
    \hangulpunctuations=0

    % Taken from luatex-ko doc.
    \setmainhangulfont{Noto Serif CJK KR}[
        Scale=0.98,
        AutoFakeSlant,
        Script=Hangul,
        Language=Korean,
        BoldFont=* Bold,
        Expansion,
    ]
    \setsanshangulfont{Noto Sans CJK KR}[
        Scale=0.98,
        AutoFakeSlant,
        Script=Hangul,
        Language=Korean,
        BoldFont=* Bold,
        Expansion,
    ]
    \setmonohangulfont{Noto Sans Mono CJK KR}[
        Scale=0.98,
        AutoFakeSlant,
        Script=Hangul,
        Language=Korean,
        BoldFont=* Bold,
        Expansion,
    ]
    \setmathhangulfont{Noto Sans CJK KR}[
        Script=Hangul,
        Language=Korean,
        SizeFeatures={
                {Size=-6,  Font=* Medium},
                {Size=6-9, Font=* Regular},
                {Size=9-,  Font=* DemiLight},
            },
    ]
\fi

\PassOptionsToPackage{pdfencoding=auto}{hyperref}
\PassOptionsToPackage{dvipsnames}{xcolor}

\makechapterstyle{nokorean}{%
    \chapterstyle{default}
    \renewcommand{\prechapternum}{\chapnamefont Chapter}
    \renewcommand{\postchapternum}{}
}

\usepackage{ob-mathleading, oblivoir-misc}
