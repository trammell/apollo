# apollo

[apollo]: https://theapolloclubmn.org/

Files relating to the [Apollo Men's Chorus][apollo].


## File guide

[abc]: https://abcnotation.com/
[ly]: https://lilypond.org/

* `.abc` files are in [ABC][abc] music notation.
* `.ly` files are in [lilypond][ly] music notation.


## Generating music from Lilypond

[midi]: https://lilypond.org/doc/v2.23/Documentation/notation/the-midi-block

Add a [MIDI block][midi]!

```lilypond
\score {
  ... music ... 
  \layout { }
  \midi { }
}
```

Then, use e.g. `fluidsynth` to generate a `.wav` file:

    fluidsynth -F friendship.wav ~/Downloads/PC3K7_Synth.sf2 friendship.midi



# TO DO

* [ ] separate learning tracks


https://music.stackexchange.com/questions/108555/how-to-split-multi-voice-lilypond-scores-to-multiple-midi-outputs-e-g-for-choi

