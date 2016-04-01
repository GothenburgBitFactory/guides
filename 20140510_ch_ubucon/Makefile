.PHONY: clean
.DEFAULT_GOAL := tw-ubcch14.pdf

clean:
	find . \( -name '*.dvi' -o -name '*.aeb' -o -name '*.aux' -o -name '*.idx' -o -name '*.ilg' -o -name '*.ind' -o -name '*.ivz' -o -name '*.ivz.xml' -o -name '*.log' -o -name '*.pic.xml' -o -name '*.toc' -o -name '*.nav' -o -name '*.out' -o -name '*.snm' -o -name '*.vrb' -o -name '*~' \) -delete

tw-ubcch14.pdf:	*.tex tw-xl.* *.png
	pdflatex tw-ubcch14
	pdflatex tw-ubcch14
	pdflatex tw-ubcch14
