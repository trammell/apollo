% from template https://lilypond.org/doc/v2.26/Documentation/learning/satb-vocal-score

\version "2.26.0"
\language "english"

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
    O sweeter2 than the honeywell,2 Deep in the sweetest2 rose in June,
    And all sweet things that tongue can tell on clover scented afternoon
    Is friendship that has lived for years
    Through fortune failure and through tears
    Is friendship that has lived for years
    Through fortune failure and through tears
}

"Stanza 2" = \lyricmode {
    Tho' he who wears it sacredly be swarted as the rafters are that shelter him
}



"T1 Words" = \lyricmode {
    O sweet - er than the honeywell, Deep  in the sweetest rose in june
}

% "T2 Music" = \relative c' {
%   \partial e-flat4^\p |
%   ef4. f8 f4 a |
%   a4. g8 g f e^"cresc." |
%   f a c
% }
% "T2 Words" = \lyricmode {
%   O sweeter than the honeywell, Deep  in the sweetest rose in june
% }
%
% "B1 Music" = \relative {
%   g4 a f g
% }
% "B1 Words" = \lyricmode {
%   O sweeter than the honeywell, Deep  in the sweetest rose in june
% }
%
% "B2 Music" = \relative {
%   c4 c g c
% }
% "B2 Words" = \lyricmode {
%   O sweeter than the honeywell, Deep  in the sweetest rose in june
% }

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
                ef df df df |
                c4. c8 c4 c4 | \break

                df4. df8 df4 df4 |
                ef4 ef4 ef4 ef4 |
                ef4. df8 df4 df4 |

                f4. f8 ef4 df4 |
                f4. ef8 ef4
                \once \override TextScript.outside-staff-priority = 100
                ef,4\< |
                f4 af4 \f ef4 df4 |
                ef2 df2 |
                c2. \bar "|."
            }
        >>

        \addlyrics {
            \set stanza = "1."
            O4 sweet -- er than4 the4 hon -- ey -- well,
            Deep in the sweet -- est rose in June,
            And all sweet things that tongue can tell
            On clo -- ver scen -- ted af -- ter -- noon,
            Is friend -- ship that has lived for years
            Thro' for -- tune, fail -- ure, and thro' tears,
            Is friend -- ship that has lived for years
            Thro' for -- tune, fail -- ure, and thro' tears.
        } \addlyrics {
            \set stanza = "2."
            Tho' he who wears it sa -- cred -- ly
            Be swart -- ed as the raft -- ers are that shel -- ter him
            E -- ter -- ni -- ty may hold few jew -- els half so rare;
            And God will find for such a friend
            Some sweet -- er slum -- ber in the end,
            And God will find for such a friend
            Some sweet -- er slum -- ber in the end.
        }

        \new Staff \with { instrumentName = "T2" } <<
            \clef treble
            \numericTimeSignature
            \key a-flat \major
            \new Voice = "T1" \relative c' {
                \partial 4 ef4^\p |
                ef4.^\markup { \italic \small "marcato la melodia" } f8 f4 af4 |
                af4. g8 g4 f4 |
                ef4 f4 af4 c4 | \break

                c4. bf8 b4 b4 |
                f4. f8 ef4 df4 |
                f4. ef8 ef4 ef4 | \break

                d4. d8 d4 d4 |
                ef df df df |
                c4. c8 c4 c4 | \break

                df4. df8 df4 df4 |
                ef4 ef4 ef4 ef4 |
                ef4. df8 df4 df4 |

                f4. f8 ef4 df4 |
                f4. ef8 ef4 ef,4 |
                f4 af4 ef4 df4 |
                ef2 df2 |
                c2. \bar "|."
            }
        >>


        \addlyrics {
            \set stanza = "1."
            O4 sweet -- er than4 the4 hon -- ey -- well,
            Deep in the sweet -- est rose in June,
            And all sweet things that tongue can tell
            On clo -- ver scen -- ted af -- ter -- noon,
            Is friend -- ship that has lived for years
            Thro' for -- tune, fail -- ure, and thro' tears,
            Is friend -- ship that has lived for years
            Thro' for -- tune, fail -- ure, and thro' tears.
        } \addlyrics {
            \set stanza = "2."
            Tho' he who wears it sa -- cred -- ly
            Be swart -- ed as the raft -- ers are that shel -- ter him
            E -- ter -- ni -- ty may hold few jew -- els half so rare;
            And God will find for such a friend
            Some sweet -- er slum -- ber in the end,
            And God will find for such a friend
            Some sweet -- er slum -- ber in the end.
        }


        \new Staff \with { instrumentName = "B1" } <<
            \clef bass
            \numericTimeSignature
            \key a-flat \major
            \new Voice = "T1" \relative c' {
                \partial 4 ef4^\p |
                ef4.  f8 f4 af4 |
                af4. g8 g4 f4 |
                ef4 f4 af4 c4 | \break

                c4. bf8 b4 b4 |
                f4. f8 ef4 df4 |
                f4. ef8 ef4 ef4 | \break

                d4. d8 d4 d4 |
                ef df df df |
                c4. c8 c4 c4 | \break

                df4. df8 df4 df4 |
                ef4 ef4 ef4 ef4 |
                ef4. df8 df4 df4 |

                f4. f8 ef4 df4 |
                f4. ef8 ef4 ef,4 |
                f4 af4 ef4 df4 |
                ef2 df2 |
                c2. \bar "|."
            }
        >>


        \addlyrics {
            \set stanza = "1."
            O4 sweet -- er than4 the4 hon -- ey -- well,
            Deep in the sweet -- est rose in June,
            And all sweet things that tongue can tell
            On clo -- ver scen -- ted af -- ter -- noon,
            Is friend -- ship that has lived for years
            Thro' for -- tune, fail -- ure, and thro' tears,
            Is friend -- ship that has lived for years
            Thro' for -- tune, fail -- ure, and thro' tears.
        } \addlyrics {
            \set stanza = "2."
            Tho' he who wears it sa -- cred -- ly
            Be swart -- ed as the raft -- ers are that shel -- ter him
            E -- ter -- ni -- ty may hold few jew -- els half so rare;
            And God will find for such a friend
            Some sweet -- er slum -- ber in the end,
            And God will find for such a friend
            Some sweet -- er slum -- ber in the end.
        }



    >>
}


%     \new Staff \with { instrumentName = "T2" } <<
%       \clef treble
%       \new Voice = "T2" {
%         \voiceOne << \global \"T2 Music" >>
%       } \addlyrics {
%         \set stanza = "1."
%         \"Stanza 1"
%       } \addlyrics {
%         \set stanza = "2."
%         \"Stanza 2"
%       }
%     >>
%     \new Lyrics = "T2"

%    \new Staff \with { instrumentName = "B1" } <<
%     \new Voice = "B1" {
%        \voiceOne << \global \"B1 Music" >>
%      }
%    >>
%    \new Lyrics = "B1"

%     \new Staff \with { instrumentName = "B2" } <<
%       \clef bass
%       \new Voice = "B2" {
%         \voiceTwo << \global \"B2 Music" >>
%       }
%     >>
%     \new Lyrics = "B2"

%     \context Lyrics = "T1"  \lyricsto  "T1"   \"T1 Words"
%     \context Lyrics = "T2"  \lyricsto  "T2"   \"T2 Words"
%     \context Lyrics = "B1"  \lyricsto  "B1"   \"B1 Words"
%     \context Lyrics = "B2"  \lyricsto  "B2"   \"B2 Words"

\markup {
    \center-column {
        \line { \bold \large  { Fair Hotchkiss } }
        "Fair Hotchkiss, we, thy loyal sons,"
        "Where'er in life our journey runs"
    }

    % Fair Hotchkiss, we, thy loyal sons
    % Where'er in life our journey runs,


}