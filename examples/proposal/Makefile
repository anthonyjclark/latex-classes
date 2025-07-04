export TEXINPUTS=../../texfiles/:

.PHONY: all
all: proposal.pdf supplementary.pdf

proposal.pdf: proposal.tex
	latexmk -quiet -pdf -outdir=build -pv $<

supplementary.pdf: supplementary.tex
	latexmk -quiet -pdf -outdir=build $<

watch: proposal.pdf
	latexmk -quiet -pdf -outdir=build -pvc $<

clean:
	latexmk -outdir=build -c

cleanall:
	latexmk -outdir=build -C
