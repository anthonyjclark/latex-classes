export TEXINPUTS = /Users/ajcd2020/Documents/Repositories/latex-classes/texfiles/:

coverletter.pdf: coverletter.tex
	latexmk -pdf $<

view: coverletter.pdf
	open -a Preview $<

clean:
	latexmk -c
