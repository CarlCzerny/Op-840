\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
exercise ="4"
\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
  mutopiatitle        =       \markup { "50 Melodische Übungsstücke, No." \exercise }

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "840, No." \exercise

  source              =       "IMSLP; Mainz: Schott, n.d.[1855]. Plate 13253"
  style               =       "Romantic"
  license             =       "Public Domain"
  copyright           =       "public domain"
  enteredby           =       "Manuela"
  maintainer          =       "Manuela"
  maintainerEmail     =       "pressephotografin--gmail.com"
  maintainerWeb       =       "https://github.com/CarlCzerny/Op-840"
  mutopiainstrument   =       "Piano"
}
RH= \relative c'' {
  %\accidentalStyle modern
  \time 3/4
  \key b \major \partial 4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(2 1 ) % abhängig vom Takt
  %\override Fingering.direction = #LEFT
  \override Fingering.staff-padding = #'()
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Voice.Fingering.padding = #1
  \mark \markup  "Allegro vivace"
  \once \override TextScript.extra-offset = #'( -18 . 5 )
  %% so kriege ich das "o" zu N.o
  %\once \override Voice.Slur #'positions = #'(2.8 . 0.6)
  d4-1\p %-\markup { \small \bold o }
  d2-1( g4-2 b2-4) b4-3 b2-3( a4 g) r r
  d'8-5( cis d b g) r
  %\once \override Voice.Slur #'positions = #'(5 . 2)
  \slashedGrace a8^( g4-3 fis-2 g-1) < g-1 b-3 >2.( < fis-2 a-4 >4) r r
  d2( a'4 c2) c4
  \set Staff.beatStructure = #'(3 ) % abhängig vom Takt
  c2-2( a4-1 es'2.-4) d4-5( c8 b a g-1 f!-4 es d c-1 b-2 a-1)
  \once \override Voice.Slur #'positions = #'(4 . 7)
  d4-5( fis,-2-.) fis-. g r
  \bar ":..:" \break
  %\override Fingering.staff-padding = #'(10 . 0)
  d\f < fis a d > q q
  q q q < a'-4 c-5 >2( < fis-2 a-4 >4-.)
  < a c >2( < fis a >4-.)
  < g, b d > q q q q q < b'-3 d-5 >2( < g b >4-.) < b-3 d-5 >2( < g b >4-.)
  es'-.-3 es-. es-. es-. es-. es-.
  < d-2 >2( g4-.)
  \once \override Voice.Slur #'positions = #'(6 . 7)
  < a,-1 >2( es'4-.)
  d( b-.) g-.
  %\override Voice.Fingering.padding = #1
  < c-5 >( a-3-.) fis-2-.
  g-3-. d-. b'-. g r4^\markup { "Fine." } \bar ":..:"
  %% Teil 2 G dur.
  \key g \major
  \mark \markup \fontsize #-1.5 { \bold "G Dur." \italic "(Sol majeur)" }
  \once \override Voice.Slur #'positions = #'(2 . 0)
  d4-\markup { \dynamic p \italic dol. } d( g h)-.
  %\override Voice.Fingering.padding = #1
  < d,-1 h'-5 >2( a'8 g)
  fis4-2( a-3 c-5-.)
  c2-5(_> a8 fis)
  \once \override Voice.Slur #'positions = #'(4 . 2)
  d4( a' < c-5 >-.) c2-4( h8 a) g4( h d-.)
  \once \override Voice.Slur #'positions = #'(-2 . 1)
  d2_>( h8-2 g-1)
  < c-2 e-4 >4-._\markup { \italic \small "cresc." } q-. q-.
  < e g >2( < c e >4)
  < h-1 d-3 >4-. q-. q-.
  < h g' >2(_> < h d >4)
  < a -2 c-4 >-.\f q( d8 c)
  < g-1 h-3 >4-. < g-2 h-4 >( c8 h)
  < fis-2 a-3 >4 < fis a d > q q r4 \bar ":..:"
  d,8(\p e fis-3 g-1 a h c-1 d e fis g-1 a h c-1
  \ottava #1 d e fis g-1 a-2 h )
  c4-5 ( a-3 fis-2 )
  d'8-5( c h a g-1 fis-4
  e d c-1 h-3 a g) \ottava #0
  < g-3 h-5 >2.(
  < fis a >4 ) r d d( g h ) d2-5 ( h8-3 g-1 )
  e'2-4 ( c8-2 g-1 g'2.-5 )
  h,4-. h ( d8 h ) a4-1-. a-2 ( c8 a )
  g4-1-. < h, d g >-. q-. q-. r \bar ":..:"
}

LHI = \relative c' {
  \clef bass  \key b \major \partial 4
  \voiceOne
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set fingeringOrientations = #'(left)  %% Akkorde
  \override Fingering.direction = #DOWN  %% Einzelnoten
  \override Fingering.staff-padding = #'()
  d,4\rest
  g4 < b d > q g q q
  d < fis c' > q g < b d > q g q q g q q
  s2. s d4 < fis a > q d q q
  c < es fis a > q c q q b < d g > q c < es a > q d < a' c > q b4 s4
  d,4\rest
  %\once \override Slur.control-points = #'((0.5 . 1) (4 . 4.8) (14 . 4.8) (18.5 . 1))
  \once \override Voice.Slur #'positions = #'(7 . 4)
  d,( fis a d a fis) d d' d d d d
  %\once \override Slur.control-points = #'((0.5 . 1) (4 . 4.8) (14 . 4.8) (18.5 . 1))
  \once \override Voice.Slur #'positions = #'(7 . 4)
  d,( fis a d a fis) d d' d d d d
  c < fis a > q c q q b < d g > q c < es a > q d < g b > q d < a' c > q s2. s4 s4
  \key g \major
  d,4\rest \clef treble
  < g'-3 h-1 >4_. q_. q_. q_. q_. q_.
  < d a' c > q q q q q q q q q q q
  < g h > q q q q q
  c,4 < e g > q c q q \clef bass
  g < h d > q g q q fis < a d > q g < h d > q
  s2. s4 s4 s4
  d, < a' c > q d, q q d q q d q q d < g h > q d q q
  s2. * 6
  d4 < g h > q d < fis c' > q
}

LHII = \relative c' {
  \partial 4
  \voiceTwo
  \set fingeringOrientations = #'(left)
  \override Fingering.direction = #LEFT
  \override Fingering.staff-padding = #'()
  s4
  g2.-4 g d g g g d4 d'4 d d^( a fis)
  d2. d c c b c d g4 d4\rest
  s4 s2. s s s s s s s
  c c b c d d < g b >4 q q q d4\rest
  s4 s2. * 8
  c'2. c g g fis g d4^( a' fis d) d4\rest
  d4\rest d2. d d d d d d4 d' d
  d-1^( c-2 a-4 ) < g h > q q q q q
  < c, e g > q q q q q
  d2. d < g-4 h-2 >4^( d' h g )
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 5 . 0 )
  d4\rest_\markup "D.C. sino al fine."
}

\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line {
          \bold \huge { "№" }
          \number { \exercise "." }
        }
        \line \large { G Moll. }
        \italic \line { Sol mineur. }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant" \RH
    \new Staff="Bass"
    <<
      \new Voice = "first"
      \relative c'
      \LHI
      \new Voice= "second"
      \LHII
    >>
  >>
  \layout { }
  \midi { }
}
