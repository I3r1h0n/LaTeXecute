TEX_FILE = loremipsum.tex
PDF_FILE = $(TEX_FILE:.tex=.pdf)
SHELL_ESCAPE = --shell-escape

all: $(PDF_FILE)

$(PDF_FILE): $(TEX_FILE)
	@echo "Compiling $(TEX_FILE) to $(PDF_FILE)..."
	pdflatex $(SHELL_ESCAPE) $(TEX_FILE)
	pdflatex $(SHELL_ESCAPE) $(TEX_FILE) 

clean:
	@echo "Cleaning up auxiliary files..."
	rm -f *.aux *.log *.out *.toc *.pdfsync $(PDF_FILE)

.PHONY: all clean
