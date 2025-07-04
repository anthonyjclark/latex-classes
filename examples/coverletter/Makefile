export TEXINPUTS=../../texfiles/:

build/coverletter.pdf: coverletter.tex
	latexmk -quiet -pdf -outdir=build -pv $<

watch: build/coverletter.pdf
	latexmk -quiet -pdf -outdir=build -pvc $<

clean:
	latexmk -outdir=build -c

cleanall:
	latexmk -outdir=build -C
