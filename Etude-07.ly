\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"

exercise ="7"

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
  \time 2/4
  \key g \major \partial 8
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4)  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto grazioso"
  e8-1-\markup { \dynamic p \italic dol. } (
  %\once \override Voice.Slur #'positions = #'(2.8 . 0.6)
  g-3 d h' g fis-2 a d, fis
  \set Staff.beatStructure = #'(2 2)
  g-3 \slashedGrace a8 g16 fis g8-1 h-2 )
  d-4-.[ d-. d-. d-.]
  c-2 ( d16 e d8 c h-1[ g'-5 d-3 h-2]
  a-1 e'-5 d16 c h a g-3 fis a g fis8-. ) d (
  \set Staff.beatStructure = #'(4)
  g d h' g fis a d, fis
  \set Staff.beatStructure = #'(2 2)
  g \slashedGrace a8 g16 fis g8 h )
  d-4-.[ d-. d-. d-.]
  \ottava #1
  d16-1 ( fis-3 a-5 g fis e d-1 c-2 )
  h8 ( g'-. ) a, ( e' ) \ottava #0
  g,-. g-. \slashedGrace a8 g16 ( fis g h
  g8[ h g] )
  \bar ".|:" \break
  d'16-4 ( cis e8-5-.[ ) d-. cis-. h-.]
  a4-1 ( d16-5 cis h a-2 )
  g8-1 ( a16 h a8-. ) g-1-.
  eis-2 ( fis-3 ) fis4
  r8 d'16-5 ( cis h a g-1 fis-2
  \set Staff.beatStructure = #'(4)
  dis8-2 e-1 g-3 h-5 )
  \set Staff.beatStructure = #'(2 2)
  d,!-1 ( e32-4 d-3 cis-1 d-1 fis8-3 ) e(
  \set Staff.beatStructure = #'(4)
  d d'-5 c!-4 a-3 )
  g-2 ( d h' g-3 fis a d, fis
  \set Staff.beatStructure = #'(2 2)
  g  \slashedGrace a8 g16 fis g8 h )
  d[ d d d] c-1 a'16-5 ( g fis e d-1 c-4
  h a g-1 fis-4 e d c-1 h-2 )
  a8-.[ e' ( d-. ) fis,-2] g4-. r8^\markup "Fine."
  \bar ":..:" \break
  %\autoBeamOff f,,8_\markup { \italic \small "cresc." }  f8 f8 f8 \autoBeamOn
  \mark \markup { \bold "G Moll." \italic "(Sol mineur)" }
  \key b \major
  d8~\p < d b' >-.[_( q r < c es a >-.] )
  r < b d g >[_( r < a d fis >-.] )
  r < g'-2 d'-5 >-._( [ r < d a' c >-. ] r q-.[ r < d fis a-4 >-. ) ] ) ]
  g-1\< ( g'-5 ) f!-4 ( es )
  es-3\> ( d ) c-1 ( b-4\! ) \break
  b-3_( a )
  \once \override Slur.positions = #'(-2 . 0)
  b_( g )
  \stemUp b4_( a8 ) \stemNeutral
  \bar ":..:"
  d-2
  \set Staff.beatStructure = #'(4)
  d8. ( es32 f es8 d c4.-1 d8-2 es8.-3 f32 g f8 es d4.-1 ) d'8-3 ( es d ) d d
  d4-5 ( c16 b a g fis8-2 g-3 fis g )
  a4 r8 d,,~ < d b' >-._([\p q-. r < c es a >-. ] )
  r < b d g > [ r < a d fis > ]
  r < g' d' > [ r < d a' c > ]
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  \override Fingering.direction = #DOWN      %% für Einzelnoten!
  r < d g b > [ r < fis-2 a-4 > ]
  \set Staff.beatStructure = #'(2 2)
  \once \override Slur.positions = #'(1 . -2)
  g\sf ( g' ) f!\p ( es )
  es ( d ) c ( b )
  b_( a ) c-5_( fis,-2 )
  a4_( g8 )
  \bar ":..:"
}

LH = \relative c' {
  \clef bass
  \key g \major
  \partial 8

  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt

  %\slashedGrace s8 r4 %% für den Fall, dass das Stück mit einem Vorschlag beginnt!
  %% Lilypond Bug, Workaround
  r8
  \clef treble
  < h-5 g'-2 >4 r8  %\offsetPositions #'(0 . 12) q
  \once \override Slur.positions = #'(-1 . -4)
  q ( < d a' >4 ) r8
  \once \override Slur.positions = #'(-1 . -3)
  q ( < g-2 h-1 >4 ) r8
  \once \override Slur.positions = #'(-1 . -2)
  q ( < d a' >2 )
  \clef bass
  < fis, a d >4 r8 a < g h d >4 r
  <<
    {
      e4 ( a h a8 )
    }
    \\
    {
      < c, e >2 d4.
    }
  >>
  r8
  \clef treble
  < h' g' >4 r8 q
  < d a' >4 r8 q < g h >4 r8 q
  < d a' >2
  \clef bass
  < fis, a d >4. < fis a d >8
  < g h d > r \clef treble < c e a > r
  < d g h >4 < d fis c' >
  <<
    \relative c' {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(down) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(3 )  %% abhängig vom Takt
      h'8 d h s
      \set Staff.beatStructure = #'(4)
      \clef bass
      g, < h d > q q
      fis < a d > q q
      e < a cis > q q
      \stemDown
      d, < a' d > q q
      \stemUp
      fis < a d > q q
      g < h e > q q
      \clef treble
      a < d fis > a < cis g' >
    }
    \\
    \relative c' {
      \voiceTwo
      \set fingeringOrientations = #'(down)
      \override Fingering.direction = #LEFT
      \override Fingering.staff-padding = #'()
      g'4. h8\rest
      g,2 fis e s2 fis g
      a4 a4
    }
  >>
  < d fis >4 r
  < h g' > r8 q ( < d a' >4 ) r8 q (
  < g h >4 ) r8 q ( < d a' >2 )
  \clef bass
  < fis, a d >
  < g h d >4 r
  < c, e a > < d a' c >
  \stemDown
  < g h >8
  \stemUp \once \override Slur.positions = #'(-2 . -1)
  d[ ( g, ] )
  \key b \major
  \override Fingering.direction = #DOWN  %% für Einzelnoten!
  r8 g4-5^( c-2 d c-2 b-5 fis'-2 g-1 d-5 )
  <<
    \relative c {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(left) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
      s2 s2
      < es-2 >4 ( < e-1 > < g-2 > fis8-3 ) d8\rest
      \clef treble
      b' f' f f a, f' f f a, f' f f b, f' f f
      a, < c fis > q q
      \clef bass

      g < b d > q q es, < g cis > q q
    }
    \\
    \relative c {
      \voiceTwo
      \set fingeringOrientations = #'(left) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      < b g' >4^( < c g' > < b g' > < es-1  g-2 > )
      < c-4 > < cis-3 > < d-5>4. s8
      b'2 a a b a g es
    }
  >>
  \stemDown
  < d fis >8 ( d' c! a )
  \stemUp \override Fingering.padding = #0.1
  g,4 ( c d c b-3 fis-5 g-4 )
  <<
    \relative c {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(left) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
      d8 c'-1 s2 s2 s2 <c-1>4 b8
    }
    \\
    \relative c {
      \voiceTwo
      \set fingeringOrientations = #'(up) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      d4-5\< ( es8-5\! ) d8\rest < c-5 g'-2>4 (
      < fis-3 a-1 > < g-4 d'-1 > )
      \override Fingering.avoid-slur = #'inside
      \set fingeringOrientations = #'(left) %% für Akkorde!
      < c,-5 es-3 >^( < d a' c > ) < g-4 >4._\markup "D.C. sino al fine."
    }
  >>
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
        \line \large { G Dur }
        \italic \line { Sol majeur. }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant"
    \RH
    \new Staff="Bass"
    \LH
  >>
  \layout { }
  \midi { }
}
