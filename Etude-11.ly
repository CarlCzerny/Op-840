\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"

exercise ="11"
#(set-global-staff-size 20)

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
  r4-\markup "Fine." \bar ":..:"
  \key es \major
  \mark \markup { \bold "C Moll." \italic "(Ut" \italic " mineur.)" }

  \bar ":..:"
}

LH = \relative c' {
  \clef bass
  \key c \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
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
      g, h f' g, d' f g, h f' g, d f'
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
      c h c f g g
    }
  >>
  %\stemUp e h'4\rest_\markup "D.C. sino al fine."
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
    \with
    {
      \consists "Bar_number_engraver"
      \override BarNumber.padding = #0
      \override BarNumber.self-alignment-X = #CENTER
      \override BarNumber.break-visibility = #end-of-line-invisible
      \override Slur.outside-staff-priority = #150
    }
    {
      <<
        \RH
      >>
    }
    \new Staff="Bass" {
      \LH
    }
  >>
  \layout {

    ragged-last-bottom = ##t
    ragged-last = ##t
    ragged-right = ##f
    ragged-bottom = ##t
    line-width = #190
  }
  %\midi { }
}
