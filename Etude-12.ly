\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
\paper {
  left-margin = 10

}
exercise ="12"

\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
  mutopiatitle        =       \markup { "50 Melodische Übungsstücke, No." \exercise }

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "840, No. 12"

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
  c4 ( c8. c16  c4 c4 ) c8 c c16 ( c c c c8-. ) c c4

}

myPatternII={
  c4 c8. c16 c4 c4
}

myPatternIII={
  c4 c8. c16
}

RH= \relative c' {
  \time 4/4
  \key es \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(2 2)  %% abhängig vom Takt
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Marcia. Maestoso."
  \once \set fingeringOrientations = #'(left)     %% für Akkorde!
  \changePitch \myPatternI {
    < es-1 g-2 c-5 > q q
    < d g h-4 > < f g d'-5 >
    < es g c-5 > r g_4 es g es c r r
  }
  \changePitch \myPatternII {
    < g' h d-4 > < g h d > q < g d' f-5 > < g c es-4 >
  }
  < g h d >8 r
  \stemUp
  \change Staff = "Bass" d16^( h d h g8 )
  #(ly:expect-warning "Zusammen")
  d'8\rest
  #(ly:expect-warning "Zusammen")
  d4\rest
  \change Staff = "Discant" \stemNeutral

  \changePitch \myPatternII { < h' d as'-5> < h d as'> q q q }
  < c e g-4>4 g'16-3 ( fis g a-4 b!4-5 cis,-2 )
  d16 ( g b d c!-4 b a g fis-4 es d c b_5 as g fis-2 )
  g8 r g,8. g16 g8 r r4
  \bar ":..:"
  \changePitch \myPatternII {
    < g' d' f! > < g d' f > q < g c es> q
  }
  \override Fingering.direction = #DOWN      %% für Einzelnoten!
  < g h d >8\noBeam g16-1 ( fis-2 g-1\noBeam [ fis-2 g fis ] g8-. ) r r4
  \changePitch \myPatternII { < d' g h> < d g h> q < es g c > < g, c es > }
  \override Fingering.direction = #UP      %% für Einzelnoten!

  < g h d >8  r g'16-5 ( fis-4 g fis g fis g fis g f es d-2 )
  #(ly:expect-warning "Oktavenüberprüfung")
  \changePitch \myPatternIII {
    < g=' c es > \ff q q  < g c e-4 > q q < c-2 f-5 > <c-1 f-3> q
  }
  < c f as >2
  g'16  c es g f-4 es d c-1 h-4 as g f es-3 d c h-2
  c8 r c,8. c16 c8 r
  r4^\markup "Fine."
  \bar ":..:"
  \key c \major
  \mark \markup \fontsize #-1.5 { \bold "C Dur." \italic "(Ut majeur.)" }
  e''4-5 e8. ( d16 c8. h16 c8.-3 a16-1
  g4-2 ) g8. ( c16 e2-1 )
  d,4-2 ( e-1 \slashedGrace g8 f8.[ e16] f8. g16
  f2 e4 ) r
  fis4-3 ( a8.-5 ) a16 a4 ( g16 f e d )
  d'4-5 d8. d16 d4( c16 h a g )
  e'16-5 ( c-3 e c a8-. ) a-. c16-5 ( a-3 c a fis8-2 ) fis-.
  g-1-. h-. d-. h-. g4-. r
  \bar ":..:"
  f'!8-4 f16-4 ( es-3 d8-2-.\noBeam ) d16-4 ( c-3 b8-2-.\noBeam ) g16-3 ( f-2 )
  g8-1-.\noBeam ( g16-3 f-2 )
  e-1 ( g-3 f-2 a-4 g4-5 e16 g f a g4 )

  < d'-3 f-5 >8-. < c-2 e-4 >-. < h-1 d-3 >-. < a-1 c-3 >-.
  < g-1 h-3 >-. < f a >-. < es g >-. < d f >-.
  e16 ( g f a g4 e16 g f a g4 )
  g4-1 c8.-3 c16 c4 ( e16-5 d c h ) |
  a4-1 a8. a16 d8-4 ( c b a-1 )
  g16-4 ( e-2 g e c8-. ) c-. f!16 ( d f d h8-. ) h-.
  c-. [ e-. g-. e-. ] g4 r
  \bar ":..:"
}

LH = \relative c {
  \clef bass
  \key es \major
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(1 1 1 1 )  %% abhängig vom Takt
  \changePitch \myPatternI {
    c-4 es-2 c g' g, c r g'-1 es-2 g es c r r
  }
  g'4_( g, h c )
  \stemDown
  #(ly:expect-warning "Zusammen")

  g8 r d'16_( h d h g8 ) g8\rest
  #(ly:expect-warning "Zusammen")

  g4\rest %g8\rest g4\rest
  \stemNeutral
  #(ly:expect-warning "Oktavenüberprüfung")

  < f= h d >4 q q q
  < es g c > q < es g cis> < es g b >
  < d g b > q < d a' c > q
  < g b >8 r g,8. g16 g8 r r4
  \override Fingering.direction = #DOWN  %% für Einzelnoten!
  \set Staff.beatStructure = #'(2 2 )
  h8-3  ( g h g  c-2  g-5 c-3 es-2 )
  \override Fingering.direction = #UP
  g8\noBeam g16-1 [ ( fis-2\noBeam ] g fis g fis
  g8-. ) d-. h-. g-.
  f'! ( g, f' g, es'-2 g-1 c,-3 es-2 )
  g, r < g' h d > r8 r2
  \override Fingering.direction = #DOWN  %% für Einzelnoten!
  % \set fingeringOrientations = #'(down) %% für Akkorde!
  \changePitch \myPatternIII {
    c,-1 c c < b-2 c-1 > q q < as c > q q
  }
  < d c >2
  < g c es >4 q < g d' f > q
  < c es>8 r c8. c16 c8 r r4
  \key c \major

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
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      \clef treble
      c8 < e g > q q c < f a > q q
      c < e g > q q c q q q
      < d h >_( g, < c e > g < d' f > g, < h d > g )
      < h d >_( g' < h, d > g' < c, e > g' q g )
      c, < d fis a > q q c q q q
      h < d g > q q h q q q
      c < e a > q q d < a' c > q q
      < g h >4 q q h4\rest
      \clef bass
      h,,8 g' d g h, g' d g
      c, g' e g c, g' e g
      h, g' d g h, g' d g
      c, g' e g c, g' e g
      e < g c > q q e q q q
      f < a c > q q fis < c' d> q q
      g < c e > q q g < d' f > q q
      \stemDown
      < c e >4 q q
      \override TextScript.self-alignment-X = #RIGHT
      \override TextScript.extra-offset = #'( 3 . 0 )
      d,4\rest_\markup "D.C. sino al fine."
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
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      #(ly:expect-warning "Oktavenüberprüfung")
      c='2 c2 c c s1 s1
      c2 c h h c d s1
      #(ly:expect-warning "Oktavenüberprüfung")
      h=,2 h c c h h c c
      e e f fis g g
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
        \line \large { C Moll }
        \italic \line { Ut mineur. }
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
    ragged-last-bottom = ##t
    ragged-last = ##t
    ragged-right = ##f
    ragged-bottom = ##t
    left-margin = #10
    line-width = #190
  }
  \midi { }
}
