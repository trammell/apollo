
.PHONY: usage

usage:
	@echo "usage: make [clean|build]"

lint:
	abc2midi chant-for-bach.abc -c -o /dev/null


%.mid: %.abc
	abc2midi $< -o $@

chant-for-bach.mp3:

