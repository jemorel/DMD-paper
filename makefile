FILE = dmd_neutronics_formatted
BIBFILE = bibliography
FIGURES = 

SOURCES = $(FILE).tex 

#$(FILE).pdf: $(FILE).ps
#	ps2pdf -dEmbedAllFonts=true $<

#$(FILE).ps: $(FILE).dvi $(FIGURES)
#	dvips -t letter -P pdf -G0  $<
#	dvips  $<


$(FILE).pdf: $(SOURCES) 

#  pdflatex $(FILE)
  
#  bibtex $(BIBFILE)
  
	pdflatex $(FILE)
	
#	rm $(FILE).pdf

	pdflatex $(FILE)
	
clean:
	-rm -rf $(FILE).dvi $(FILE).ps $(FILE).pdf \
	        $(FILE).log *.aux texput.log \
		$(FILE).fff $(FILE).toc *.tex.flc \
                $(FILE).lof $(FILE).lot 
