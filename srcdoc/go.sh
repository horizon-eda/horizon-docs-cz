#!/bin/bash
make latex
cd _build/latex/
pdflatex horizon-eda-cz.tex
cd ../..

evince ./_build/latex/horizon-eda-cz.pdf&
