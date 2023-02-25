sync_library:
	git submodule update --remote --merge
	rsync -av --delete resources/api/library/ library/
	./resources/remove-navigation-table.py

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
