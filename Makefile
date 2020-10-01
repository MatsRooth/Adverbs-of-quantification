# I didn't need to compile for this machine. But let's test it.


parse: barker-shan/parse
	ln barker-shan/parse .

%.out:	%.gm
	parse $*.gm > $*.out

%.show:	%.gm
	parse $*.gm 


%.pdf: %.out
	enscript -o $*.ps $*.out
	ps2pdf $*.ps

%.gm.pdf: %.gm
	enscript -o $*.gm.ps $*.gm
	ps2pdf $*.gm.ps
