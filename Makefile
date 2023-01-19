all: curriculum.pdf

%.pdf: %.tex %.bib
	latex $<
	bibtex ios
	bibtex android
	bibtex published
	latex $<
	latex $<
	dvips $(basename $<)
	ps2pdf $(basename $<).ps

clean:
	rm -f *.aux *.out *.log *.bbl *.blg *.pdf