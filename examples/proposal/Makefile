export TEXINPUTS=../../texfiles/:

.PHONY: all
all: build/proposal.pdf build/supplementary.pdf build/summary.pdf

build/proposal.pdf: proposal.tex ../../texfiles/proposal.cls
	latexmk -quiet -pdf -outdir=build $<

build/supplementary.pdf: supplementary.tex ../../texfiles/proposal.cls
	latexmk -quiet -pdf -outdir=build $<

build/summary.pdf: summary.tex ../../texfiles/proposal.cls
	latexmk -quiet -pdf -outdir=build $<

watch: build/proposal.pdf ../../texfiles/proposal.cls
	latexmk -quiet -pdf -outdir=build -pvc $<

clean:
	latexmk -outdir=build -c

cleanall:
	latexmk -outdir=build -C
