# SVG Setup Guide

## Problém s SVG obrázkom

Pre použitie `\includesvg` s Inkscape potrebujete:

### 1. Nainštalovať Inkscape
- Stiahnuť z: https://inkscape.org/release/
- Pri inštalácii zaškrtnúť "Add to PATH"

### 2. Premenovať súbor (odporúčané)
Názov súboru `KoopLift.drawio (1).svg` obsahuje medzery a zátvorky, čo môže spôsobovať problémy.

**Riešenie:** Premenujte súbor na:
```
KoopLift.drawio.svg
```

Alebo použite escapovanie v LaTeX:
```latex
\includesvg[inkscapelatex=false,width=\textwidth]{images/KoopLift.drawio (1).svg}
```

### 3. Alternatívne riešenie (ak Inkscape nie je dostupný)
Keďže už máte PDF verziu (`KoopLift.drawio.pdf`), môžete použiť:
```latex
\includegraphics[width=\textwidth]{images/KoopLift.drawio.pdf}
```

### 4. Testovanie
Skompilujte s `--shell-escape`:
```bash
pdflatex --shell-escape main.tex
```

Alebo v LaTeX Workshop nastavte:
```json
"latex-workshop.latex.tools": [
  {
    "name": "pdflatex",
    "command": "pdflatex",
    "args": [
      "--shell-escape",
      "-synctex=1",
      "-interaction=nonstopmode",
      "-file-line-error",
      "%DOC%"
    ]
  }
]
```





