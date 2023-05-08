TITLE = MandyNoto-HW3-1-Ruby

# Name of main latex file
MAIN = main

## Saving as project
# Set name of this of this project for zip or tar
PROJECT = 'latex_and_Makefile'
# Set date associated with project for zip or tar
DATE = $(shell date +"%b%b%Y")

all: $(MAIN).pdf

# For latexmk: errors don't stop the pvc (preview continuously)
OPT = --interaction=nonstopmode

## Perform proper commands when changes are detected
# Rerun commands if any of these files change
TEX_SOURCES = Makefile \
							$(MAIN).tex \

# Rerun commands of images are modified
SRC := $(shell find src/* -type f)

# Rerun commands of images are modified
FIGURES := $(shell find img/* -type f)
							
# Generate cover page
# Must install pdftk for this to work
final.pdf: cover.pdf $(MAIN).pdf
	pdftk cover.pdf $(MAIN).pdf cat output final.pdf

# Only do this command once for speed,
# if performing all main commands is unnecessary
once:
	pdflatex $(MAIN)

# Uncomment line below if using bash shell for clean
# SHELL = /bin/bash
$(MAIN).pdf: $(TEX_SOURCES) $(FIGURES) $(SRC)
	# pdflatex $(MAIN)
	# if we used the index package
	# makeindex $(MAIN)
	# bibtex $(MAIN)
	# pdflatex $(MAIN)
	# pdflatex $(MAIN)
	# pdflatex $(MAIN)
	
	@# This is the optimized version of doing all commands above
	@# ,i.e., it will only run the necessary commands, but not
	@# all computers have latexmk installed
	@# It also requires some perl
	# latexmk -pdf $(MAIN)

	@# show live updates for latexmk
	@# annoying without a previewer that automatically refreshes
	latexmk -pdf -shell-escape -jobname=$(TITLE) -pvc -pdflatex="pdflatex $(OPT)" $(MAIN)

	@# minimal plain latexmk options
	# @#latexmk -pdf $(MAIN)

# Remove auxiliary files
clean:
	latexmk -C
	latexmk -C --jobname=$(TITLE)

# Doesn't work with latexmk -pvc (preview continuously) option
# Use the command 'tar tzf <name of .tgz output> to check its contents'
targz:
	$(MAKE) clean
	$(MAKE) all
	$(MAKE) clean
	tar czf $(PROJECT)_$(DATE).tgz $(TEX_SOURCES) $(FIGURES) cover.pdf

# use command 'unzip -l <name of .zip' to preview its contens
zip:
	$(MAKE) clean
	$(MAKE) all
	$(MAKE) clean
	zip -q $(PROJECT)_$(DATE).zip $(TEX_SOURCES) $(FIGURES) cover.pdf

# Protect this file
# e.g. if we had a a file calle 'clean' or 'all' this won't break
.PHONY: clean all

# References 
# https://www.youtube.com/watch?v=9cVUXD-0kgY&lc=UgyAM_1FbPjx3wDqn5B4AaABAg

