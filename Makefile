all: main.pdf

main.pdf: main.tex Makefile #bibliography.bib commands.tex preamblestuff.tex Makefile
	latexmk -f -bibtex -lualatex -use-make main.tex

clean:
	latexmk -CA
	rm *.aux *.fdb_latexmk *.fls *.log *.out
