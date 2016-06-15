\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
\paper {

  left-margin = 10
  %annotate-spacing = ##t
}
exercise ="48"
#(set-global-staff-size 20)

\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
  mutopiatitle        =       \markup { "50 Melodische Übungsstücke, No." \exercise }

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "840, No. 48"

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
  c16 c-. [ c c-. c c-. c c-. ]
}
myPatternII = {
  c16 c [ c c c c c c ]
}
myPatternIII = {
  c16 ( c c c c8-. ) c
}
uPatternI = { c8-. c-. c-. c-. }

RH= \relative c' {
  \time 4/4
  \key f \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 2 2)  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #DOWN      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \mark \markup "Allegro vivace."
  \changePitch \myPatternI {
    r_\markup { \dynamic f \italic "stacc." } d-1 r f-3 r e-2 r g-4
    r f-3 r a-5 r a,-1 r cis-2
    r d r f r e r g
  }
  \changePitch \myPatternII {
    r f r a r a, r cis
    r d-1 r f-2 r a-3 r d-5
  }
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \changePitch \myPatternII {
    r gis,-1 r f'-5 r e-4 r d-3
  }
  \changePitch \myPatternI {
    r cis-2 r a-1 r cis-2 r e-3
  }
  r16 a-3\> ( gis-2 a gis a gis a )
  g!-1 \p ( a b!-3 a g-1 f-3 e f g-3 f e d-1 cis-4 b a g )
  \changePitch \myPatternIII {
    f-2 a-1 d f a r
  }
  \override Slur.direction = #DOWN
  \override Slur.positions = #'(1 . -1)
  \override Fingering.direction = #DOWN
  \changePitch \myPatternIII {
    e,-2 g-1 b e g r
    d,-2 f-1 a d f r
    cis,-2 e-1 a cis e r
  }
  r^\markup "Fine."
  \bar ":..:"
  \key d \major
  \mark \markup { \bold "D Dur." \italic "(Re" \italic " majeur.)" }
  a4-1_\markup { \dynamic p \italic "dol." }


  % R4. \bar ":..:"
}

LH = \relative c {
  \clef bass
  \key f \major
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
  \changePitch \uPatternI {
    d-5 f-3 e-3 g-2 g-3 a-1 a,-5 cis-3
    d-1 f-3 e-4 g-2
  }
  f8 a a, cis
  d-1 f-3 a-2 d-1 gis,-5 f'-1 e-2 d-1
  \changePitch \uPatternI {
    cis-3 a-5 cis-3 e-2
  }
  f-1-. r r4
  \clef treble

  g'8-3-.\noBeam

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
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Staff.beatStructure = #'(2 2)  %% abhängig vom Takt
      \key d \major


    } \\ \relative c' {
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

    }
  >>
  \key d \major
  g-1_\markup "D.C. sino al fine." ( es-5 c-5 ) r
  r
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
        \line \large { D Moll }
        \italic \line { Ré mineur. }
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
