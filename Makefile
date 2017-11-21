#targets = mtcv.pdf
targets = mtcv.pdf
deps = Makefile

all: $(targets)

%.pdf: %.tex $(deps)
	pdflatex $*.tex

.PHONY: clean view backup

clean:
	rm -f *.{aux,dvi,log,out,toc,lof,pdf} *.tmp *~

view: $(targets)
	for i in $(targets); do xpdf $$i $(PAGE); done
