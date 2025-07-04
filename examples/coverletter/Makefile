export TEXINPUTS=../../texfiles/:

coverletter.pdf: coverletter.tex
	latexmk -quiet -pdf -outdir=build -pv $<

watch: coverletter.pdf
	latexmk -quiet -pdf -outdir=build -pvc $<

clean:
	latexmk -outdir=build -c

cleanall:
	latexmk -outdir=build -C
