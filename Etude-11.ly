\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
\paper {
}
exercise ="11"

\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
  mutopiatitle        =       \markup { "50 Melodische Übungsstücke, No." \exercise }

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "840, No. 11"

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

myPatternI = {
  c8-.\noBeam  c16 ( c16 c16 c16 c8 c8-. ) c8-.
}
myPatternII = {
  c8-.\noBeam c16 ( c16 c16 c16 c8-.\noBeam )
  c16 ( c16 c16 c16 c4. )
}
myPatternIII = {
  c8-.\noBeam  c16 ( c16 c16 c16 c8-.\noBeam )
  c16 ( c16 c16 c16 c8-.\noBeam )
  c16 ( c c c )
}
myPatternIV = { c16 ( c c c c8-.\noBeam ) }

RH= \relative c'' {
  \time 3/8
  \key c \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto viavce"
  \ottava #1
  g''8-3-.\noBeam \p a16-4 ( g fis g
  e8-1-.\noBeam ) f!16-4 ( e dis e
  c4. )
  \slashedGrace d8 c8-2 ( h-1-. c-2-. )
  d-3-.\noBeam e16-4 ( d cis d
  h8-1-.\noBeam ) c16-4 ( h ais h
  g4._1 )
  g8 ( a-. ) h-.
  c-3-.\noBeam d16-4 ( c h c
  d8-4 h-. ) g-.
  \changePitch \myPatternI { c-3 d c h c d h g }
  \changePitch \myPatternII {
    e'-5_\markup \italic "cres." d-4 c-3 h-2 c-1 fis-5
    e-4 d-3 cis-2 d-1 g-4
  }
  \ottava #0
  R4.
  \changePitch \myPatternII { g,-3 \f a g fis g e f! e dis e c }
  \slashedGrace d8 c8 ( h-. ) c-.
  \changePitch \myPatternII { d e d cis d h c! h ais h g }
  g8 ( a-. ) h-.
  \changePitch \myPatternIII {
    c-4 d-4 c h c d-4
    e-4 d-4 c dis e-3
    f-4 e dis e-3
  }
  f8-1 ( a-. ) c-.
  c-5 \sf ( g-. ) e-.
  g-5 ( f-. ) d-.
  c4 r8 R4. \bar ":..:"
  < g-1 h-3 d-5 >8-. q-. q-. q-. q-. q-.
  < fis-1 a-2 d-5 > q q q q q
  < a-2 c-4 d-5 > q q q q q
  < g h d > q q q q q
  d'8-3-.\noBeam \p
  \changePitch \myPatternIV {
    e-4 d cis d-1 h'-5
    c!-4 h a h c-4
    d-4 c h c a-1
  }
  h16-4 ( a-3 gis-2 a-5 )
  fis-3 e d e fis g!-1
  \ottava #1
  a h c-1 d e fis
  g8-5 g g g_\< g g\!
  \changePitch \myPatternII {
    g-3 \f a-4 g fis g e f! e dis f c
  }
  d16 ( c h c h c
  \changePitch \myPatternII {
    d ) e d cis d h c! h ais h g
  }
  h16-3 g-1 fis-2 g-1 a-2 h-1
  c-2 d c h c e-4
  d-3 e d cis-2 d-1 f-4
  e-3 f-4 e-3 dis-2 e-1 c'-5
  h a g f-1 e-2 d-1
  a'-5 g f e d-1 c-4
  \ottava #0
  h a g-1 f-4 e d
  c8-. g'-. e-. c-. r r^\markup "Fine."
  \bar ":..:"
  \key es \major
  \mark \markup \fontsize #-1.5 { \bold "C Moll." \italic "(Ut mineur.)" }
  < g c es >4._\markup { \dynamic p \italic "legato" }
  ( < f h d > < es c' > < f as d > < d g h >
  < es g c > < g h d >
  g8 h d
  < g, d' f >4._\< < g c es >
  )
  d'-2 \sf_\> ( as'8 f d\! )
  c4 c8 es4 d8 c4 r8 R4.
  \bar ":..:" \break
  < g h d >4. \p _\< < fis c' d >_\> < g h d >4\! g'8-5 (
  fis4 g8 ) q4.
  < fis, c' d > < g h d > ( d'8-2 a'-5 g-4 g4.-5 )
  < a, c fis-4 > < h! d f! > < c es >
  d8 ( f as ) as ( g h,! ) c4 r8 R4. \bar ":..:"
}

LH = \relative c' {
  \clef bass
  \key c \major
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.4
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 )  %% abhängig vom Takt

  \clef treble
  <<
    {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #UP
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(3 )  %% abhängig vom Takt
      c8 e
      g c, e g c, e g c, e g
      g, h f' g, d' f
      g, h f' g, d' f
      c e g h, f' g
      c, e g h, f' g
      c, e g
      \clef bass
      \stemDown a, c d \stemUp
      h ( d h-2
      \stemDown g-1 f!-2 d-4 )
      \stemUp
      c e g c, e g c, e g c, e g
      g, h f' g, d' f
      g, h f' g, d' f
      c e g h, f' g
      c, e g a, c f
      g, c e g, h f'
      c e g
      c, d8\rest d8\rest
    } \\ {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #DOWN %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #DOWN
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(3 )  %% abhängig vom Takt
      c'='4. c c c
      g g g g
      c h c h c
      a g s c, c c c g g g g c h c a g g c
    }
  >>
  g'8-3-.\noBeam
  \changePitch \myPatternIV {
    a-2 g fis g-3 h-1
    c-2 h ais h-3 c-2
    d-1 c h c-2 a-4
    h-1 f gis a-2 fis-4
    g-1 fis e fis-2 d-4 [
  } e-. fis-. ]
  g4. ( d8-. ) r r
  <<
    {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #UP
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(3 )  %% abhängig vom Takt
      g4. g d d d d s
    } \\ {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #DOWN %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #DOWN
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(3 )  %% abhängig vom Takt
      g=8 < h d > q
      g q q
      d < a' c > q d, q q d q q d q q
      < g h >4 d8\rest
    }
  >>
  R4.
  <<
    {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #UP
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(3 )  %% abhängig vom Takt
      c8 e g c, e g c, e g c, e g
      g, h f' g, d' f g, h f' g, h f'
      \stemDown
      c e g h, d g c, e g f a d
      g, c e g, h f'
      < c e > q q q d,8\rest d8\rest
    } \\ {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #DOWN %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #DOWN
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(3 )  %% abhängig vom Takt
      c=4. c c c
      g g g g
      \stemUp
      c h c f g g
    }
  >>
  \key es \major
  c4.-1 ( g-3 as-2 f-4 g-1 c,-2 g~) g
  h'-2 c
  < f,~ as~ c~ d~> q
  < g c es > < g h f' >
  < c es >8 ( g' es c ) r r
  g4.-3 ( as! g ) R4. g
  as g < f h > < es c' > d g as!
  < f as c d > < g d' f >
  < c-5 es-2 >8 g-1 ( es-5 c-5 )
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 3 . 0 )
  r r_\markup "D.C. sino al fine."
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
        \line \large { C Dur }
        \italic \line { Ut majeur. }
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
  \layout {
    ragged-last-bottom = ##f
    ragged-last = ##f
    ragged-right = ##f
    ragged-bottom = ##f
  }
  \midi { }
}
