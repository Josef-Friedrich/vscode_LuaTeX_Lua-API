sync_library:
	rsync -av --delete $(HOME)/repos/tex/lua-api/library/ library/

install: install_vsce install_yo install_generator_code

install_npm:
	npm install

install_vsce:
	npm install --global @vscode/vsce

install_yo:
	npm install -g yo

install_generator_code:
	npm install -g generator-code

watch:
	npm run watch

compile:
	npm run compile

build: compile

package:
	vsce package

publish:
	vsce publish

.PHONY: sync_library
