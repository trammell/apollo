
.PHONY: usage

usage:
	@echo "usage: make [clean|build]"

lint:
	abc2midi chant-for-bach.abc -c -o /dev/null

all: chant-for-bach.mp3

%.mid: %.abc
	abc2midi $< -o $@

%.mp3: %.mid
	abc2midi $< -o $@


