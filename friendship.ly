\version "2.26.0"
\language "english"

% from template https://lilypond.org/doc/v2.26/Documentation/learning/satb-vocal-score

\paper {
  top-system-spacing.basic-distance = 10
  score-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 20
  last-bottom-spacing.basic-distance = 10
}

global = {
  \numericTimeSignature
  \key a-flat \major
  \time 4/4
}

"Stanza 1" = \lyricmode {
  O sweeter than the honeywell, Deep  in the sweetest rose in june
}

"Stanza 2" = \lyricmode {
  Tho' he who wears it sacredly be swarted as the rafters are that shelter him
}


"T1 Music" = \relative {
  c''4 c c8[( b)] c4
}
"T1 Words" = \lyricmode {
  O sweeter than the honeywell, Deep  in the sweetest rose in june
}

"T2 Music" = \relative {
  e'4 e4. f8 f a a g g f e f a c
}
"T2 Words" = \lyricmode {
  ha ha ha ha
}

"B1 Music" = \relative {
  g4 a f g
}
"B1 Words" = \lyricmode {
  hu hu hu hu
}

"B2 Music" = \relative {
  c4 c g c
}
"B2 Words" = \lyricmode {
  ho ho ho ho
}

\score {

  \new ChoirStaff <<

    \new Staff \with { instrumentName = "Tenor 1" } <<
      \clef treble
      \new Voice = "T1" {
        \voiceOne << \global \"T1 Music" >>
      }
    >>
    \new Lyrics = "T1"

    \new Staff \with { instrumentName = "Tenor 2." } <<
      \clef treble
      \new Voice = "T2" {
        \voiceOne << \global \"T2 Music" >>
      } \addlyrics {
        \set stanza = "1."
        \"Stanza 1"
      } \addlyrics {
        \set stanza = "2."
        \"Stanza 2"
      }
    >>
    \new Lyrics = "T2"

    \new Staff \with { instrumentName = "Baritone" } <<
      \clef bass
      \new Voice = "B1" {
        \voiceOne << \global \"B1 Music" >>
      }
    >>
    \new Lyrics = "B1"

    \new Staff \with { instrumentName = "Bass" } <<
      \clef bass
      \new Voice = "B2" {
        \voiceTwo << \global \"B2 Music" >>
      }
    >>
    \new Lyrics = "B2"

    \context Lyrics = "T1"  \lyricsto  "T1"   \"T1 Words"
    \context Lyrics = "T2"  \lyricsto  "T2"   \"T2 Words"
    \context Lyrics = "B1"  \lyricsto  "B1"   \"B1 Words"
    \context Lyrics = "B2"  \lyricsto  "B2"   \"B2 Words"
  >>
}

