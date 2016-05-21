\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
\paper {

  left-margin = 10
  %annotate-spacing = ##t
}
exercise ="12"
#(set-global-staff-size 20)

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
  c4 ( c8. c16 c4 c4 ) c8 c c16 ( c c c c8-. ) c c4
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

RH= \relative c' {
  \time 4/4
  \key es \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Marcia. Maestoso."
  \changePitch \myPatternI {
    < es-1 g-2 c-5 > q q < d g h-4 > < f g d'-5 >
    < es g c-5 > r g-4 es g es c r r
  }
  \changePitch \myPatternI {
    < g' h d-4 > < g h d > q < g d' f-5 > < g c es-4 > < g h d > r
    d h d h g r r
  }
  r^\markup "Fine."
  \bar ":..:"
  \key es \major
  \mark \markup { \bold "C Moll." \italic "(Ut" \italic " mineur.)" }
  \bar ":..:"
}

LH = \relative c {
  \clef bass
  \key es \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(2 2 )  %% abhängig vom Takt
  \changePitch \myPatternI {
    c-4 es-2 c g' g, c r g'-1 es-2 g es c r r
  }
  g'4 ( g, h c )
  g8 r d'16 ( h d h g8 ) r r4

  \key es \major
  r_\markup "D.C. sino al fine."

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
    left-margin = #10
    line-width = #190
  }
  %\midi { }
}
