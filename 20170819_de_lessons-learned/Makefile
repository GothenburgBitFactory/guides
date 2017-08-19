.PHONY: clean
.DEFAULT_GOAL := lessons-learned.pdf

clean:
	find . \( -name '*.dvi' -o -name '*.aeb' -o -name '*.aux' -o -name '*.idx' -o -name '*.ilg' -o -name '*.ind' -o -name '*.ivz' -o -name '*.ivz.xml' -o -name '*.log' -o -name '*.pic.xml' -o -name '*.toc' -o -name '*.nav' -o -name '*.out' -o -name '*.snm' -o -name '*.vrb' -o -name '*~' -o -name '*.pdfpc' -o -name '*.fls' -o -name '*.fdb_latexmk' -o -name '*.xdv' \) -delete

lessons-learned.pdf:	*.tex *.png # *.jpg
	xelatex lessons-learned
	xelatex lessons-learned
	xelatex lessons-learned
