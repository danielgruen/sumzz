all: sumzz.pdf

sumzz.pdf: sumzz.tex references.bib
	pdflatex sumzz.tex
	pdflatex sumzz.tex
	bibtex sumzz
	pdflatex sumzz.tex
	pdflatex sumzz.tex

clean:
	\rm sumzz.pdf *.log *.out *.aux *.bbl *.blg *.dvi
