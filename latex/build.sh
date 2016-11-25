# git clean -fx

xelatex index.tex
makeindex idx_finance.idx
# all bibtex shoulb be cited by multibib
# bibtex index.aux
for x in {c,f} ; do 
	bibtex $x
done

xelatex index.tex
xelatex index.tex
