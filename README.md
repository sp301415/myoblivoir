# myoblivoir

My collections of commonly used macro and packages. Based on the excellent oblivoir class.

NOTE: This class and tex file can change any time, and may contain weird corner cases that causes error. Use at your own expense.

## Usage

Put this folder under `$(kpsewhich -var-value=TEXMFHOME)/tex/latex/`.

## myoblivoir

```latex
\documentclass{myoblivoir}
```

Loads `oblivoir` class with `a4paper, footnote, finemath` option, and sets the paper margin to 30mm. You can pass other valid `oblivoir` options, too.

## mypreamble

```latex
\input{mypreamble.tex}
\input{kotex.tex} % Optional, Loads kotex package with finemath and hangul option
\input{thmchap.tex} % Optional, Changes the counter of theorem environment to chapter.counter
```

Contains various packages & macros of my taste.
