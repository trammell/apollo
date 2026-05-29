
.PHONY: usage

usage:
	@echo "usage: make [clean|build]"

clean:
	rm -f friendship.pdf

lint:
	abc2midi chant-for-bach.abc -c -o /dev/null

all: chant-for-bach.mp3 friendship.pdf

pdf: friendship.pdf

fs:
	make friendship.pdf
	make friendship.midi
	make friendship.wav

%.midi: %.abc
	abc2midi $< -o $@

%.midi: %.ly
	lilypond --output=$* $<

%.mp3: %.midi
	abc2midi $< -o $@

%.pdf: %.ly
	lilypond --output=$* $<

%.wav: %.midi
	fluidsynth -F $@ ~/Downloads/FluidR3_GM2-2.SF2 $<
	@echo "afplay $@"
