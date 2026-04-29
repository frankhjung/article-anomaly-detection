#!/usr/bin/make

.PHONY: help clean cleanall
.SUFFIXES: .ipynb .html .pdf .tex .md
.DEFAULT: render

help: ## Show this help message
	@echo Anomaly Detection
	@echo ""
	@echo Available targets:
	@awk 'match($$0, /^([^[:space:]#].*):[[:space:]]*##[[:space:]]*(.*)$$/, m) {printf "  \033[1;36m%-30s\033[0m %s\n", m[1], m[2]}' $(MAKEFILE_LIST)

render: ## Render anomaly-detection notebook to HTML
	$(MAKE) anomaly-detection.html

%.tex: %.ipynb ## Convert Jupyter notebook to LaTeX
	@uv run jupyter nbconvert --execute --to latex --output $@ $<

%.pdf: %.tex ## Compile LaTeX to PDF
	@pdflatex $<

%.html: %.ipynb ## Convert Jupyter notebook to HTML
	@uv run jupyter nbconvert --execute --to html --output $@ $<

%.html : %.md
	@pandoc $< -o $@

clean: ## Remove intermediate build files
	@$(RM) -rf *.aux *.out *.log *.bbl *.blg *.tex *_files/

cleanall: clean ## Remove all generated files (HTML, PDF)
	@$(RM) -rf *.html *.pdf
