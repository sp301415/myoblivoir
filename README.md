# myoblivoir

My collections of commonly used macro and packages. Based on the excellent oblivoir class.

NOTE: This class and style file can change any time, and may contain weird corner cases that causes error. Use at your own expense.

## Usage
Put this folder under `$(kpsewhich -var-value=TEXMFHOME)/tex/latex/`.

### myoblivoir
```latex
\documentclass{myoblivoir}
```
This loads `oblivoir` class with `11pt, a4paper` option. You can pass other valid `oblivoir` options, too. 

### macros
```latex
\usepackage{macros}
```
Note that `myoblivoir` class automatically loads `macros`. Most new commands defined here does not override commands from document class, if they collide.

Options:
- chapter: Make theorem numbering follow chapter.
- kotex: Loads kotex package with appropriate settings.
