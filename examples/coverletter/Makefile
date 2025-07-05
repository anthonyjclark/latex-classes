TEXFILES=../../texfiles
BUILDDIR=build
export TEXINPUTS=$(TEXFILES)/:

$(BUILDDIR)/coverletter.pdf: coverletter.tex $(TEXFILES)/coverletter.cls
	latexmk -quiet -pdf -outdir=$(BUILDDIR) $<

.PHONY: watch
watch:
	latexmk -pdf -outdir=$(BUILDDIR) -pvc coverletter.tex

.PHONY: open
open:
	latexmk -quiet -pdf -outdir=$(BUILDDIR) -pv coverletter.tex

.PHONY: clean
clean:
	latexmk -outdir=$(BUILDDIR) -c

.PHONY: cleanall
cleanall:
	latexmk -outdir=$(BUILDDIR) -C
