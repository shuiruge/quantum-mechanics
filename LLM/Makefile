TARGETS = quantum manifold
LATEX   = pdflatex -interaction=nonstopmode -halt-on-error
XELATEX = xelatex -interaction=nonstopmode -halt-on-error

.PHONY: all clean

all: $(TARGETS:%=%.pdf)

manifold.pdf: manifold.tex
	$(XELATEX) manifold.tex
	$(XELATEX) manifold.tex

quantum.pdf: quantum.tex
	$(LATEX) quantum.tex
	$(LATEX) quantum.tex

clean:
	rm -f $(TARGETS:%=%.pdf) *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.synctex.gz
