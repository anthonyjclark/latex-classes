export TEXINPUTS = /Users/ajcd2020/Documents/Repositories/latex-classes/texfiles/:

.PHONY: all
all: proposal.pdf supplementary.pdf

proposal.pdf: proposal.tex
	latexmk -pdf -pv $<

supplementary.pdf: supplementary.tex
	latexmk -pdf $<

watch: proposal.pdf
	latexmk -pdf -pvc $<

clean:
	latexmk -c
