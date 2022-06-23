export TEXINPUTS=../../texfiles/:

.PHONY: all
all: proposal.pdf supplementary.pdf

proposal.pdf: proposal.tex
	latexmk -quiet -pdf -pv $<

supplementary.pdf: supplementary.tex
	latexmk -quiet -pdf $<

watch: proposal.pdf
	latexmk -quiet -pdf -pvc $<

clean:
	latexmk -c

cleanall:
	latexmk -C

