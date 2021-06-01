export TEXINPUTS = /Users/ajcd2020/Documents/Repositories/latex-classes/texfiles/:

.PHONY: all
all: proposal.pdf supplementary.pdf

proposal.pdf: proposal.tex
	latexmk -pdf $<

supplementary.pdf: supplementary.tex
	latexmk -pdf $<

view: proposal.pdf
	open -a Preview $<

clean:
	latexmk -c
