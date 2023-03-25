TARGET=paper_en
PDFLATEX=xelatex --shell-escape
AUXFILES=*.aux *.log *.out *.toc *.lot *.lof *.bcf *.blg *.run.xml \
         *.bbl *.idx *.ind *.ilg *.markdown.* *.acn *.acr *.alg *.glg *.glo \
         *.gls *.glsdefs *.ist
PARTS=$(wildcard *.lau)
DATA=$(wildcard data/*)

.PHONY: all clean wipe

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).lau $(PARTS) $(GRAPHS) $(DATA)
	# $(PDFLATEX) -interaction=batchmode $< # The initial typesetting.
	texfot $(PDFLATEX) $< # The final typesetting, now also with index.

clean:
	rm -f $(AUXFILES)

wipe: clean
	rm -f $(TARGET).pdf
