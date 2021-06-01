export TEXINPUTS = /Users/ajcd2020/Documents/Repositories/latex-classes/texfiles/:

coverletter.pdf: coverletter.tex
	latexmk -pdf -pv $<

watch: coverletter.pdf
	latexmk -pdf -pvc $<

clean:
	latexmk -c
