# Makefile style guide: http://clarkgrubb.com/makefile-style-guide

#####################################
## Define meta Makefile variables. ##
#####################################

MAKEFLAGS += --warn-undefined-variables
SHELL := bash
.DEFAULT_GOAL := help
.DELETE_ON_ERROR:
.SHELLFLAGS := -e -u -o pipefail -c
.SUFFIXES:

#############################
## Set Makefile variables. ##
#############################

ALL_PYGMENT_STYLES := $(shell poetry run pygmentize -L styles | grep "* " | cut -d" " -f2 | tr -d ":" | sort)
PYGMENT_HTML_FORMATTER := "html"


clean:  ## Clean our repository files and artifacts.
	rm -rf ./styles
	rm -f README.rst

build:  ## Build our development "environment".
	poetry install

css: clean  ## Build CSS stylesheets for all `pygment`-supported styles.
	mkdir ./styles
	for style in $(ALL_PYGMENT_STYLES); do \
		printf "🎨 Processing \`$$style\`..."; \
  		poetry run pygmentize -S $$style -f $(PYGMENT_HTML_FORMATTER) -a .highlight > ./styles/$$style.css; \
  		printf "finished!\n"; \
	done
