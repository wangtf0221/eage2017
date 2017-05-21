#
# fig4latex makefile
#

all: ww.tex

# translation into pstex

ww.tex: ww.eps 
	fig2dev -L pstex_t -p ./ww.eps -m 1 ww.fig > ww.tex

ww.pdf: ww.eps 
	epstopdf ww.eps

ww.eps: ww.fig 
	fig2dev -L pstex -m 1 ww.fig > ww.eps

clean::
	rm -f ww.tex ww.eps ww.pdf


