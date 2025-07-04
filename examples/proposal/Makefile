export TEXINPUTS=../../texfiles/:

.PHONY: all
all: proposal.pdf supplementary.pdf

build/proposal.pdf: proposal.tex
	latexmk -quiet -pdf -outdir=build -pv $<

build/supplementary.pdf: supplementary.tex
	latexmk -quiet -pdf -outdir=build $<

watch: proposal.pdf
	latexmk -quiet -pdf -outdir=build -pvc $<

clean:
	latexmk -outdir=build -c

cleanall:
	latexmk -outdir=build -C
