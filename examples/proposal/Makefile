TEXFILES=../../texfiles
BUILDDIR=build
export TEXINPUTS=$(TEXFILES)/:

.PHONY: all
all: $(BUILDDIR)/proposal.pdf $(BUILDDIR)/supplementary.pdf $(BUILDDIR)/summary.pdf

$(BUILDDIR)/proposal.pdf: proposal.tex $(TEXFILES)/proposal.cls
	latexmk -quiet -pdf -outdir=$(BUILDDIR) $<

$(BUILDDIR)/supplementary.pdf: supplementary.tex $(TEXFILES)/proposal.cls
	latexmk -quiet -pdf -outdir=$(BUILDDIR) $<

$(BUILDDIR)/summary.pdf: summary.tex $(TEXFILES)/proposal.cls
	latexmk -quiet -pdf -outdir=$(BUILDDIR) $<

.PHONY: watch
watch:
	latexmk -pdf -outdir=$(BUILDDIR) -pvc proposal.tex

.PHONY: watch-summary
watch-summary:
	latexmk -quiet -pdf -outdir=$(BUILDDIR) -pvc summary.tex

.PHONY: open
open:
	latexmk -quiet -pdf -outdir=$(BUILDDIR) -pv proposal.tex

.PHONY: clean
clean:
	latexmk -outdir=$(BUILDDIR) -c

.PHONY: cleanall
cleanall:
	latexmk -outdir=$(BUILDDIR) -C
