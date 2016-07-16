\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
exercise ="9"
\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
  mutopiatitle        =       "50 Melodische Übungsstücke, No. " \exercise

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "840, No. " \exercise

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

\paper {
  left-margin = #10
  system-system-spacing.basic-distance = #8
  min-systems-per-page = #6
  top-margin = #10
}

RH= \relative c' {
  \time 2/4
  \key b \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegro viavce"

  \once \override Slur.positions = #'(2 . -2)
  \grace { f32-1 ( b-2 } d8-4-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { b32-1 ( d-2 } f8-5-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { d32-1 ( f-2 } b8-5-. ) r
  \grace { f32-1 ( b-2 } d8-5-. ) r
  \slashedGrace f,32 d'8-5 ( c-4-. )
  \slashedGrace f,32\noBeam c'8-5 ( b-4-. )
  \grace { b32 c } b8-5 ( a-2-. ) g-1-. f-2-.
  \once \override Slur.positions = #'(2 . -2)
  \grace { f,32-1 ( b-2 } d8-4-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { b32-1 ( d-2 } f8-5-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { d32-1 ( f-2 } b8-5-. ) r
  \grace { f32-1 ( b-2 } d8-5-. ) r
  \acciaccatura g,8 c-3-. es-5-.
  \acciaccatura f,8\noBeam a-2-. c-4-. b r8 r4
  \bar ":..:"
  \set Staff.beatStructure = #'(2 2 )
  a16-3 \p ( b a g a8-. ) f-1-.
  b16-2 ( c b a b8-2-. ) d-1-.
  \ottava #1
  f16-3 ( g f e f8-. ) c-1-.
  es!-3 ( d ) c-1-. b-2-.
  e16-3 ( f e d e8-._\markup \italic "cresc." ) c-.
  f16-3 ( g f es f8-1-. ) c'-3-.
  c-5 ( b ) g-. e-.
  f-2  \ottava #0 f,-5 [ ( es!-4 c-2 ) ]
  \once \override Slur.positions = #'(2 . -2)
  \grace { f,32-1 ( b-2 } d8-4-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { b32-1 ( d-2 } f8-5-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { d32-1 ( f-2 } b8-5-. ) r
  \grace { f32-1 ( b-2 } d8-5-. ) r
  \slashedGrace f,32 d'8-5 ( c-4-. )
  \slashedGrace f,32\noBeam c'8-5 ( b-4-. )
  \grace { b32 c } b8-5 ( a-2-. ) g-1-. f-2-.
  \ottava #1
  \once \override Slur.positions = #'(2 . 0)
  \grace { b32-1 ( d-2 } f8-5-. ) r
  \acciaccatura f-1 b-4-. r
  \acciaccatura es,-3 g-5-. r
  \acciaccatura c,-1 es-3-. r
  \ottava #0
  \acciaccatura b-2 d-4-. f-5-.
  \acciaccatura a, es'-4-. c-1-.
  b-2 r r4^\markup "Fine."
  %\offsetPositions #'(1 . 0)
  \bar ":..:"  \pageBreak
  \key es \major
  g,16-1_\markup { \dynamic p \italic "dol." } ( b-3 es-4 b-2 g'4-5
  f,16 b es b g'4 )
  f,16 ( b d-4 f-1 b d f b,-4
  es4-5 b8-2-. ) r
  g,16 ( b es b g'4
  f,16 b es b g'4 )
  a,16 ( c es-3 f-1 a c es-4 a,
  b8-. ) b-. b-.\noBeam r
  \bar ":..:"
  b16-4 \p ( as! f d b-4 as f d b_2 d_1 f as b-4 d-1 f-3 d-1 )

  es-2 ( f es d es8-. ) g-4-.
  f4-1 ( b8-4-. ) r
  b16 \f ( as f d b as f d-1
  f as b-4 d-1 f as b-4 d-1
  f-4 es d es g-5 es b f
  f2-2 )
  g,16 \p ( b es b g'4 g,16 b es b g'4 )
  f,16 ( b d-4 f-1 b d f b,-4
  es4-5 b8-2-. ) r
  c,16_\markup \italic "cresc." ( es as es c'4
  b,16-1 es-2 g-4 es-2 b'4-5 )
  d,,16 \f ( f as b-4 d-1 f as d,
  es8-. ) es-. es-. r
  \once \override Voice.Slur #'positions = #'(2.8 . 0.6)

  \bar ":..:"
}

LH = \relative c' {
  \clef bass
  \key b \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 )  %% abhängig vom Takt

  \grace { s32 s32 }
  b8-._\markup { \italic "stacc." } < d f >-. b-. q-.
  b-. q-. b-. q-.
  a-. < es' f >-. b-. < d f >-.

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
      f,8 < c' es > q q
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
      f,2
    }
  >>
  b8-. < d f >-. b-. q-.
  b8-. < d f >-. b-. q-.
  es,-. < g c >-. f-. < c' es >-.
  < b-4 d-2 >-. < d-2 f-1 >-. < b d >-.\noBeam r
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
      f8 < c' es > q q
      f, < b d > q q
      f < a c > q q
      \clef treble
      b < d f > q q
      c < g' b > q q
      c, < f a > q q
      c < es g > c < g' b >
      < f a > b8\rest b4\rest

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
      f,2 f f
      b c c c4 c4
      %d4\rest_\markup "D.C. sino al fine."
    }
  >>
  \clef bass
  b8-. < d f >-. b-. q-.
  b8-. < d f >-. b-. q-.
  es,-. < g c >-. e q
  f-. < a c >-. es!-. q
  d-. < f b >-. d-. q-.
  es-. < g b >-. es-. < g c >-.
  f-. < b d >-. f-. < a c es >-.
  < b-4 d-2 > < d-2 f-1 > < b d >\noBeam r
  \key es \major
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
      es,2 es b es es es f
      s

      b, b s b b b b s es es b es as^4 g^5
      b,
    } \\ {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #DOWN
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      es8-4 b'-1 g-2 b-1
      es,8 b' g b
      b, as' f as
      es b' g b
      es, b' g b
      es, b' g b
      f es' c es
      < b d >4. d,8\rest
      b8 as'! f as
      b, as' f as
      g-2^( b-1 g-2 es-3 )
      b f' d f
      b, f' d f
      b, f' d f
      b, g' es g
      < b,^5 d^3 > b'-1 as-2 f-3
      es b' g b
      es, b' g b
      b, as' f as
      es b' g b
      as es' c es
      g, es' b es
      b, as' f as
      \override TextScript.self-alignment-X = #RIGHT
      \override TextScript.extra-offset = #'( 3 . 0 )
      < es g >4. d8\rest_\markup "D.C. sino al fine."
    }
  >>
}

EtudeIX=
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line {
          \bold \huge { "№" }
          \number { \exercise "." }
        }
        \line \large { B Dur }
        \italic \line { Si \flat majeur. }
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
    %ragged-last = ##t
    ragged-right = ##f
  }
 %\midi { }
}
