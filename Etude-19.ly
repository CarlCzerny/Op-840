\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
exercise ="19"
%% wenn erforderlich linken Abstand ändern
\paper {
  %% hier für den Fall, dass Änderungen erforderlich sind
  %%l eft-margin = #15
  %% top-margin = #20
  %% system-system-spacing.basic-distance = #8
  %min-systems-per-page = #6

}
\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
  mutopiatitle        =       \markup { "50 Melodische Übungsstücke, No." \exercise }

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "840, No." \exercise

  source              =       "IMSLP; Mainz: Schott, n.d.[1855]. Plate 13253"
  style               =       "Technique"
  license             =       "Public Domain"
  copyright           =       "public domain"
  enteredby           =       "Manuela"
  maintainer          =       "Manuela"
  maintainerEmail     =       "pressephotografin--gmail.com"
  maintainerWeb       =       "https://github.com/CarlCzerny/Op-840"
  mutopiainstrument   =       "Piano"

}

myPattern = {
  \tuplet 3/2 { c16 ( c c c c c } \repeat unfold 2 \tuplet 3/2 { c c c c c c }
  c8-. ) c-.
}

RH= \relative c''' {
  \time 6/8
  \key as \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 3 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto animato."
  \partial 8
  %\once \override Slur.positions = #'(2.8 . 0.6)
  b8-3 \f
  \grace { b32 c } b8-3 ( a b es4-5 g,8-1 )
  \grace { g32[ as!] } g8-3 ( fis g b4-5 es,8-2 )
  \grace { es32[ f] } es8-2 ( d-. ) es-. \grace { f32[ g] } f8-3 ( e-. ) f-.
  g4.-4_> ( es!8-2 ) r es-3 \p (
  d16-2 c b c d es-3 f-1 g as b c-1 d
  \ottava #1 es-1 f-1 g as b-4 a-3 c-5 b as g f-1 es-3
  d-2 f-4 es d c-1 b-4
  \ottava #0 as g f-1 es-3 d c
  b-2 d-1 f-2 b-4 f-2 d-1 b8-2 ) r
  \bar ":..:"
  %f,,8_\markup { \italic \small "cresc." }  f8 f8 f8 \autoBeamOn
  % f f\noBeam f f
  \override Fingering.direction = #DOWN     %% für Einzelnoten!
  %\markup { \dynamic p \italic "dol." }
  \mark \markup { \bold "D Moll." \italic "(Ré" \super \flat \italic " mineur)" }
  \bar ":..:" \break
  \key f \major
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(2 )  %% abhängig vom Takt

  \bar ":..:"
}

LH = \relative c {
  \clef bass
  \key es \major
  \partial 8
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.4
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 3 )  %% abhängig vom Takt
  r8
  <<
    {
      \voiceOne
      %\mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      es8 < g b > q es q q es q q es q q
      b < es g > q b < d as'> q
      es < g b > q es q q
    } \\ {
      \voiceTwo
      es4. es es es b b es es
      as as g es f f
    }
  >>
  \clef bass

  <<
    {
      \voiceOne
      \mergeDifferentlyDottedOn


    } \\ {
      \voiceTwo

    }
  >>
  \clef bass
  \key f \major
  < d f >
  c-.\noBeam r \clef bass
  \stemDown
  % a,8 ( cis16 e a8 [ g ]

  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 3 . 0 )
  r_\markup "D.C. sino al fine."
}

Struktur= {
  s2.*3 \break

}

EtudeXV=
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line {
          \bold \huge { "№" }
          \number { \exercise "." }
        }
        \line \large { Es Dur }
        \italic \line { Mi \super \flat majeur. }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant"
    \RH
    \new Staff="Bass"
    <<
      \new Voice \LH
      \new Voice \Struktur
    >>
  >>
  %% Falls erforderlich Zeilenlänge und Einzug ändern
  \layout {
    %indent = #15
    %ragged-last-bottom = ##f
    %ragged-last = ##f
    %ragged-bottom = ##f
    %line-width = #180
  }
  %\midi { }
}

#'()
\EtudeXV
