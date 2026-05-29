% from template https://lilypond.org/doc/v2.26/Documentation/learning/satb-vocal-score

\version "2.26.0"
\language "english"

#(set-global-staff-size 18)

\header {
    title = "Friendship."
    composer = "W. E. Haesche"
    poet = "Words by Allen Botsford"
    tagline = \markup \tiny {
        \center-column {
            \fill-line {
                \line { Copyright, 1905, by G. Schirmer (Inc.) }
                \line { Copyright renewal assigned, 1932, to G. Schirmer (Inc.) }
            }
            \line { Printed in the U. S. A. }
        }
    }
}

% since all parts sing the same words in unison, we can reuse the lyrics
verseOne = \lyricmode {
    \set stanza = "1."
    O4 sweet -- er than4 the4 hon -- ey -- well,
    Deep in the sweet -- est rose in June,
    And all sweet things that tongue can tell
    On clo -- ver scen -- ted af -- ter -- noon,
    Is friend -- ship that has lived for years
    Thro' for -- tune, fail -- ure, and thro' tears,
    Is friend -- ship that has lived for years
    Thro' for -- tune, fail -- ure, and thro' tears.
}
verseTwo = \lyricmode {
    \set stanza = "2."
    Tho' he who wears it sa -- cred -- ly
    Be swart -- ed as the raft -- ers are that shel -- ter him
    E -- ter -- ni -- ty may hold few jew -- els half so rare;
    And God will find for such a friend
    Some sweet -- er slum -- ber in the end,
    And God will find for such a friend
    Some sweet -- er slum -- ber in the end.
}

\score {

    \new ChoirStaff <<

        \new Staff \with { instrumentName = "T1" } <<
            \clef treble
            \numericTimeSignature
            \key a-flat \major
            \new Voice = "T1" \relative c'' {
                \tempo \markup { \italic "Moderate time." }
                \partial 4 c4^\p |
                c4. c8 c4 c4 |
                df4. df8 df4 df4^\markup { \italic cresc. } |
                ef ef ef ef | \break

                ef4. df8 df4 df4 |
                f4. f8 ef4 df4 |
                f4. ef8 ef4 ef4 | \break

                d4. d8 d4 d4 |
                ef4. df!8 df4 df4 |
                c4. c8 c4 c4 | \break

                df4. df8 df4 df4 |
                ef4 ef4 ef4 ef4 |
                ef4. df8 df4 df4 | \break

                f4. f8 ef4 df4 |
                f4. ef8 ef4 \dynamicUp ef,4\< |
                f4 af4 ef'4 \f df4 |
                ef2 df2 |
                c2. \bar "|."
            }
            \new Lyrics \lyricsto "T1" \verseOne
            \new Lyrics \lyricsto "T1" \verseTwo
        >>

        \new Staff \with { instrumentName = "T2" } <<
            \clef treble
            \numericTimeSignature
            \key a-flat \major
            \new Voice = "T2" \relative c' {
                \partial 4 ef4^\p |
                ef4.^\markup { \italic \small "marcato la melodia" } f8 f4 af4 |
                af4. g8 g4 f4 |
                ef4 f4 af4 c4 | \break

                c4. bf8 bf4 bf4 |
                df4. df8 c4 bf4 |
                df4. c8 c4 bf4 | \break

                af4. af8 g4 af4 |
                c4. bf8 bf4 ef, |
                ef4. f8 f4 af4 | \break

                af4. g8 g4 f4 |
                ef4 f4 af4 c4 |
                c4. bf8 bf4 bf4 | \break

                df4. df8 c4 bf4 |
                df4. c8 c4 ef,4 |
                f4 af4 af4 af4 |
                c2 bf2 |
                af2. \bar "|."
            }
            \new Lyrics \lyricsto "T2" \verseOne
            \new Lyrics \lyricsto "T2" \verseTwo
        >>

        \new Staff \with { instrumentName = "B1" } <<
            \clef bass
            \numericTimeSignature
            \key a-flat \major
            \new Voice = "B1" \relative c {
                \partial 4 ef4^\p |
                ef4. ef8 ef4 ef4 |
                ef4. ef8 ef4 ef4^\markup { \italic cresc. } |
                ef4 ef4 ef4 ef4 | \break

                f4. f8 f4 f4 |
                g4. g8 g4 g4 |
                af4. af8 af4 g4 | \break

                f4. f8 f4 f4 |
                g4. g8 g4 ef |
                ef4. ef8 ef4 ef4 | \break

                ef4. ef8 ef4 ef4 |
                ef4 ef4 ef4 ef4 |
                f4. f8 f4 f4 | \break

                g4. g8 g4 g4 |
                af4. af8 af4 c,4 |
                df4 ef4 f4 f4 |
                g2 g2 |
                ef2. \bar "|."
            }
            \new Lyrics \lyricsto "B1" \verseOne
            \new Lyrics \lyricsto "B1" \verseTwo
        >>

        \new Staff \with { instrumentName = "B2" } <<
            \clef bass
            \numericTimeSignature
            \key a-flat \major
            \new Voice = "B2" \relative c {
                \partial 4 af4^\p |            % O
                af4. af8 af4 af4 |             % Swee ter than the
                bf4. bf8 bf4 bf4 |             % Hon ey well deep
                c4 c4 c4 c4 | \break           % in the sweet est

                df4. df8 df4 df4 |             % rose in june and
                ef4. ef8 ef4 ef4 |             % all sweet things that
                af,4. af8 af4 af4 | \break     % tongue can tell on

                bf4. bf8 bf4 bf4 |             % clo ver scent ed
                ef4. ef8 ef4 ef4 |             % af ter noon is
                af,4. af8 af4 af4 | \break     % friend ship that has

                bf4. bf8 bf4 bf4 |             % lived for years through
                c4 c4 c4 c4 |                  % for tune fail ure
                df4. df8 df4 df4 | \break      % and through tears is

                ef4. ef8 ef4 ef4 |               % friend ship that has
                af,4. af8 af4 c4 |             % lived for years through
                df4 c4 bf4 bf4 |               % for tune fail ure
                ef2 ef2 |                      % and through
                af,2. \bar "|."                  % tears
            }
            \new Lyrics \lyricsto "B2" \verseOne
            \new Lyrics \lyricsto "B2" \verseTwo
        >>
    >>

    % generate both PDF and MIDI output
    \layout { }
    \midi {
        \tempo 4 = 120
    }
}

\markup {
    \fill-line {
        \center-column {
            \bold \huge "Fair Hotchkiss"
            \vspace #1
        }
    }
}

\markup \fill-line {
    \concat {
        \left-column {
            "Fair Hotchkiss, we, thy loyal sons,"
            "Where'er in life our journey runs"
            "Shall cherish all the mem'ries dear,"
            "That cluster round our sojourn here."
            \null
            "Fair Hotchkiss, tho' we come and go,"
            "While o'er thy walls out ivies grow,"
            "We still shall love the and be true"
            "To dear old Hotchkiss and the blue."
        }
        \hspace #2 \draw-line #'(0 . -20) \hspace #2
        \left-column {
            "When evening's shadows close the day,"
            "Our halls with music sweet are gay,"
            "With festal scenes of ev'ry cheer,"
            "For friendship ripens year by year."
            \null
            "And when life's shadows deeper grow,"
            "We'll feel the bright'ning afterglow"
            "Of mem'ries dear and friendship true"
            "Of dear old Hotchkiss and the blue."
        }
    }
}
