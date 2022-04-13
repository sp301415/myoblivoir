# myoblivoir

My collections of commonly used macro and packages. Based on the excellent oblivoir class.

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
Note that `myoblivoir` class automatically loads `macros`. You can give `chapter` option, then it will use chapter counter on `theorem`. Every new commands defined here does not override commands from document class, if they collide.

