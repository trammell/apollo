
.PHONY: usage

usage:
	@echo "usage: make [clean|build]"

clean:
	rm -f friendship.pdf

lint:
	abc2midi chant-for-bach.abc -c -o /dev/null

all: chant-for-bach.mp3 friendship.pdf

pdf: friendship.pdf

%.midi: %.abc
	abc2midi $< -o $@

%.midi: %.ly
	lilypond --output=$* $<

%.mp3: %.midi
	abc2midi $< -o $@

%.pdf: %.ly
	lilypond --output=$* $<
