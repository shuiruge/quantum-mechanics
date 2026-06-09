TARGET = quantum
LATEX  = pdflatex -interaction=nonstopmode -halt-on-error

.PHONY: all clean

all: $(TARGET).pdf

clean:
	rm -f $(TARGET).pdf *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.synctex.gz

$(TARGET).pdf: $(TARGET).tex
	$(LATEX) $(TARGET).tex
	$(LATEX) $(TARGET).tex
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.synctex.gz
