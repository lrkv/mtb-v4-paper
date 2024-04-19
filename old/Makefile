PDFLATEX=xelatex --shell-escape
AUXFILES=*.aux *.log *.out
DATA=$(wildcard data/*)

.PHONY: all clean wipe

all: paper_en.pdf clean

%.pdf: %.lau $(DATA)
	$(PDFLATEX) -interaction=batchmode $< # The initial typesetting.
	texfot $(PDFLATEX) $< # The final typesetting, now also with index.

clean:
	rm -f $(AUXFILES)

wipe: clean
	rm -f paper_en.pdf paper_cz.pdf
