\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"

\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke"
  mutopiatitle        =       "50 Melodische Übungsstücke, No. 8"

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny 8 }
  mutopiaopus         =       "840, No. 8"

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

RH= \relative c' {
  \time 2/4
  \key c \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 2 2 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(down)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto vivace"
  r16 \f < c-1 e-3 >-. < d-1 f-3 >-._\markup { \italic "stacc." } < e-1 g-3>-. < f-1 a-3 >-. < g h >-. < a c >-. < h d >-.
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  < c e >-. < d f >-. < e g>-. < f a >-. < g h >-. < a c >-. < h d >-. < c-1 e-3 >-.
  < d-2 f-4>8-. q-. < c e >-. q
  < h d >4 r
  r16 < d,,-2 f-4 >-. < e-2 g-4>-. < f-2 a-4 >-. < g-2 h-4 >-. < a c >-. < h d >-. < c e >-.
  < d f >-. < e g>-. < f a >-. < g h >-. < a c >-. < h d >-. < c-2 e-4 >-. < d-3 f-5 >-.
  < c-2 e-4>8-. < g c e-5 >-. < f h d >-. q-. < e c' >4 r \bar ":..:"
  r16 \f < e'-1 g-3>-. < d-1 f-3 >-. < c-1 e-3 >-. < h-1 d-3 >-. < a c >-. < g h >-. < f a >-.
  < e g>-. < d f >-. < c e >-. < h d >-. < a c >-. < g h >-. < f a >-.
  \set fingeringOrientations = #'(down)     %% für Akkorde!
  < e-1 g-3>-.
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  < e-2 a-5 >8 q-. < e g >-. q-. < d f >4 r
  \set fingeringOrientations = #'(down)     %% für Akkorde!
  r16 \sf < d-1 h'-5 >-. < e-1 c'-5 >-. < f-1 d'-5 >-.
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  < g-1 e'-5 >-. < a f' >-. < h g' >-. < c a' >-.
  \ottava #1
  < d h' > < e c' > < f d' > < g e' > < a f' > < h g' > < c a' > < d h' >
  < e c' >8-. \ff < c-1 g'-4 >-. < g c e-5 >-. < f g h d >-. < e g c >_.
  \ottava #0 r r4^\markup { "Fine." } \bar ":..:"
  \key es \major
  \mark \markup { \bold "C moll." \italic "(Ut mineur)" }
  es-3-\markup { \dynamic p \italic dol. } ( c
  g'4.-> f8 es8-. ) [ es-. c-1-. c-2-. ]  < h-1 d-3 >2
  as'8-5-. [ as-3-. as-. as-. ]
  g4.-4 ( f16 es )
  d8-1-. d-3 ( f h, ) c4 r \bar ":..:"
  \set Staff.beatStructure = #'(4 )
  d8-2 ( g es-3 c-1 d4-3 g, )
  d'8 ( g es c d2 )
  h'8-4-. \f h-. h-. h-. c4.-5-\sf-\> ( g16-3 es-2\!
  d8-1 \p as'-5 g-4 h, c4 ) r

}
LH = \relative c {
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
  \set Staff.beatStructure = #'(2 2 )  %% abhängig vom Takt
  < c g' >4 r r2 < h g' >8-. q-. < c g' > q
  g16 g' d h g8 r < h g' >4 r r2
  \stemDown
  c8-.[ g'-. g,-. g'-. ]
  \stemNeutral
  c,16 c' g e c8 r
  < c g' >4 r r2 < cis a' >8-. q-. q-. q-.
  d16-4 f a f d8 r < g, h f' >4 r r2
  \stemDown
  c8-. [ e-. g-. g,-. ]
  \stemNeutral
  c,16 c' g e c8 r
  <<
    {
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \voiceOne
      \key es \major
      c'16 g' es g c, g' es g
      h, g' d g h, g' d g
      c, g' es g es c' g c
      g4 g f f es es f g s2
      g4 g g g g g g g f f es es f g
    } \\ {
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Fingering.direction = #UP  %% für Einzelnoten!
      c,4 c h h c es
      g16 d' h d g, d' h d
      f, d' h d f,^\< d' h d
      es,^\> c' g c\! es, c' g c
      f, d' as d g, f' d f
      c-4^( es g es c8 ) d,8\rest
      g16 d' h d g, es' c es
      g, d' h d g, d' h d
      g, d' h d g, es' c es
      g, d' h d g, d' h d
      f, d' as d f, d' as d
      es, c' g c es, c' g c
      f, d' as d g, f' d f
      c^(_\markup "D.C. sino al fine." es g es c8 ) d,8\rest
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
          \number 8.
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
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \RH
      >>
    }
    \new Staff="Bass" {
      \LH
    }
  >>
  \layout { }
  \midi { }
}

