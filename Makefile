TARGET      := dono.pdf
PDFLATEX     := $$pdflatex='pdflatex -interaction=nonstopmode -synctex=1 %S %O'
LATEXMK      := latexmk -cd -e $(PDFLATEX) -f -pdf

all : $(TARGET)

%.pdf : %.tex dono.bib
	$(LATEXMK) $<

.PHONY : all

clean :
	latexmk -c
	rm -f streamalg-paper-submission.zip .log .aux .out .toc .bbl .blg *.vtc dono.pdf

$(TARGET): all
