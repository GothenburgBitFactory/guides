.PHONY: clean
.DEFAULT_GOAL := taskwarrior-introduction.pdf

clean:
	find . \( -name '*.dvi' -o -name '*.aeb' -o -name '*.aux' -o -name '*.idx' -o -name '*.ilg' -o -name '*.ind' -o -name '*.ivz' -o -name '*.ivz.xml' -o -name '*.log' -o -name '*.pic.xml' -o -name '*.toc' -o -name '*.nav' -o -name '*.out' -o -name '*.snm' -o -name '*.vrb' -o -name '*~' \) -delete

taskwarrior-introduction.pdf:       *.tex *.png *.sty
	pdflatex taskwarrior-introduction
	pdflatex taskwarrior-introduction
	pdflatex taskwarrior-introduction
