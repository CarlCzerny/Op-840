\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
\paper {

  left-margin = 10
  %annotate-spacing = ##t
}
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
  \time 6/8
  \key c \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 3 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
e4 e8-1 ( a4-3 ) a8
c4.-5_> a4 e8
f4-2 ) f8 ( a-4 g f )
e4.~ e8 ( f-4 3-
d4 ) d8 d-2 ( e-4 d-3
c4. h8 d f )
a,4 a8 ( c4 h8 )
a4 r8 r4 r8
\bar ":.."
< fis-2 h-4 >4 ( < a-1 c-3 >8 < h d >4 < a c >8 )
< a-1 c-3 >4. ( < gis-2 c-4 > )
< a-1 c-3 >4 q8 ( < c e >4 <a c >8 )
< gis-2 h-4 >2.
e'8 e e e e e
e e e e e e
e ( a-. ) a-. a ( dis, ) dis
e4 r8 r4 r8
e4 e8 ( a4 ) a8
c4._> ( a )
f4 f8 ( a g f )
e4.~ e8 ( f e
d4 ) d8 ( h' gis d )
c4 ( a'8 ) h ( d f
e4 ) a,8 c4 h8 )
a4 r8 r4 r8
  \mark \markup "Allegretto."

 r^\markup "Fine."
  \bar ":..:"
  \key d \major
  \mark \markup { \bold "A Dur." \italic "(La" \italic " majeur.)" }



   R4. \bar ":..:"
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
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(1 1 1 1 )  %% abhängig vom Takt


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
      \set Staff.beatStructure = #'(2 2)  %% abhängig vom Takt



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
    left-margin = #10
    line-width = #190
  }
  %\midi { }
}
