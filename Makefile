#
#

DOC=LDM-643
tex=	LDM-643.tex body.tex
SRCS=$(wildcard LDM-643.tex body.tex)

OBJS=$(SRCS:.tex=.pdf)

all: $(tex)
	latexmk -bibtex -xelatex -f $(DOC).tex

clean :
	latexmk -c
	rm *.pdf


acronyms.tex :$(tex) myacronyms.tex
	acronyms.csh  $(tex)
