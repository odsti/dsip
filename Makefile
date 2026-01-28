BUILD_DIR=_build/html
INB_SDIR=interactive-notebooks
INB_DIR=$(BUILD_DIR)/$(INB_SDIR)

html: inbs
	# Check for ipynb files in source (should all be .Rmd).
	if compgen -G "*.ipynb" 2> /dev/null; then (echo "ipynb files" && exit 1); fi
	jupyter-book build -W .

inbs:
	mkdir -p $(INB_DIR)
	cp $(INB_SDIR)/*.ipynb $(INB_DIR)
	cp -r data $(INB_DIR)

github: html
	ghp-import -n _build/html -p -f

clean:
	rm -rf _build

rm-ipynb:
	rm -rf */*.ipynb
