all: curriculum-es.pdf curriculum-en.pdf

%.pdf: %.tex
	latex $<
	bibtex ios
	bibtex android
	bibtex published
	latex $<
	latex $<
	dvips $(basename $<)
	ps2pdf $(basename $<).ps

clean:
	rm -f *.aux *.dvi *.ps *.out *.log *.bbl *.blg *.pdf