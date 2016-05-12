\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
%% wenn erforderlich linken Abstand ändern
\paper {
  %% hier für den Fall, dass Änderungen erforderlich sind
  left-margin = #15
  top-margin = #20
  system-system-spacing.basic-distance = #8
  %min-systems-per-page = #6

}
\header {
  mutopiatitle = "50 Melodische Übungsstücke"
  mutopiacomposer = "CzernyC"
  mutopiaopus = "840"
  mutopiainstrument = "Piano"
  source ="Mainz: Schott, n.d.[1855]. Plate 13253"
  style = "Romantic"
  license="Public Domain"
  maintainer="Manuela"
  maintainerEmail="pressephotografin--gmail.com"
  composer =\markup { \bold "Carl Czerny (1791-1857)"  }
  %opus = \markup { "Op:" \number \tiny 840 }
  piece =\markup {"Op:" \number \tiny 840 "Etüde" \number \tiny 8 }
  title = "50 Melodische Übungsstücke"
  %subtitle = "subtitle"
  %arranger = "arranger"
  %instrument = "Piano"
  metre = "metre"
  %poet = "poet"
  texidoc = "All header fields with special meanings."
  copyright = "public domain"
  enteredby = "Manuela"
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
  < e g>-. < d f >-. < c e >-. < h d >-. < a c >-. < g h >-. < f a >-. < e-1 g-3>-.
  < e-2 a-5 >8 q-. < e g >-. q-. < d f >4 r

  %\retrograde {  }
  %\inversion c c' {  }

  \once \override Slur.positions = #'(2.8 . 0.6)
  g4 ( e' )

  \ottava #1
  \bar ":..:" \break

  c'''-\markup { \dynamic p \italic dol. } c c c
  \ottava #0
  \autoBeamOff f,,8_\markup { \italic \small "cresc." }  f8 f8 f8 \autoBeamOn


  \mark \markup { \bold "B Dur." \italic "(Si" \super \flat \italic " majeur)" }
  \bar ":..:" \break
  \key es \major
  b b b
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
  \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt

}

LHI = \relative c' {
  \clef bass
  \key c \major
  \voiceOne
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt

  %\slashedGrace s8 r4 %% für den Fall, dass das Stück mit einem Vorschlag beginnt!
  %% Lilypond Bug, Workaround
  d,4\rest c4
  \key b \major
  b8
}

LHII = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(left)   %% Akkorde
  \override Fingering.direction = #DOWN %% Einzelnoten
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #DOWN
  s4 c,4 c
  \key es \major
  b2
  \stemUp b4_. \stemDown b b
  d4\rest
  d4\rest_\markup "D.C. sino al fine."

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

      <<
        \new Voice = "first"
        \relative c'
        \LHI
        \new Voice= "second"
        \LHII
      >>
    }
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

