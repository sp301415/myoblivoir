# myoblivoir

My collections of commonly used macro and packages. Based on the excellent oblivoir class.

NOTE: This class and style file can change any time, and may contain weird corner cases that causes error. Use at your own expense.

## Usage
Put this folder under `$(kpsewhich -var-value=TEXMFHOME)/tex/latex/`.

### myoblivoir
```latex
\documentclass{myoblivoir}
```
This loads `oblivoir` class with `11pt, a4paper, footnote, nonfrench, finemath` option. You can pass other valid `oblivoir` options, too. 

### mypreamble
```latex
\usepackage{mypreamble}
```
Note that `myoblivoir` class automatically loads `mypreamble`. Most new commands defined here does not override commands from document class, if they collide.

Options:
- chapter: Make theorem numbering follow chapter.
- kotex: Loads bare-minimum kotex package. Recommended for mostly english documents.
- hangul: Loads kotex package with `hangul, finemath, nonfrench` option turned on.
