.PHONY: all resume clean

MAKE_DIR = output
tex_flags = -xelatex -silent -interaction=batchmode

# *** *** ALL *** ***

all_files = $(wildcard ./*.tex)

all: $(all_files:.tex=.pdf)

# *** *** RESUME *** ***

resume_files = $(wildcard ./CV_Davide_Fauri*.tex)

resume: $(resume_files:.tex=.pdf)

# *** *** SINGLE FILES *** ***

# to build any pdf file; first create the temp folder, then run these commands on the .tex file
%.pdf: %.tex | $(MAKE_DIR)

ifndef TRAVIS # local run
	# $< is the name of the source file
	latexmk ${tex_flags} -outdir=${MAKE_DIR} $<

else # travis run
	tectonic -o $(MAKE_DIR) --keep-intermediates -r0 $<
	if [ -f ${MAKE_DIR}/$(notdir $(<:.tex=.bcf)) ]; then biber --input-directory ${MAKE_DIR} $(notdir $(<:.tex=)); fi
	if [ -f ${MAKE_DIR}/$(notdir $(<:.tex=.idx)) ]; then tectonic -o $(MAKE_DIR) --keep-intermediates -r0 $<; makeindex ${MAKE_DIR}/$(notdir $(<:.tex=.idx)); fi
	tectonic -o $(MAKE_DIR) --print $<
	convert -density 300 ${MAKE_DIR}/$(notdir $@) -quality 90 $(@:.pdf=.png)

endif
	# $@ is the name of the target being generated
	cp ${MAKE_DIR}/$(notdir $@) .


# create the MAKE_DIR folder
$(MAKE_DIR):
	mkdir -p $@

# *** *** CLEAN *** ***

clean:
	rm -rf ${MAKE_DIR}/
	rm -f $(all_files:.tex=.pdf)
	rm -f $(notdir $(all_files:.tex=.synctex.gz))
	rm -f $(notdir $(all_files:.tex=.run.xml))
	rm -f $(notdir $(all_files:.tex=.bcf))
