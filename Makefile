sync_library:
	rsync -av --delete $(HOME)/repos/tex/lua-api/library/ library/

.PHONY: sync_library
