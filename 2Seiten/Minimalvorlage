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
  piece =\markup {"Op:" \number \tiny 840 "Etüde" \number \tiny 2 }
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

RH= \relative c'' {
  \time 2/4
  \key g \major \partial 8
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 2 2 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto animato"
  c4
  \once \override Slur.positions = #'(2.8 . 0.6)
  g4 ( e' )
  \grace { f32( g } f4)-.-3
  \offsetPositions #'(1 . 0)
  \slashedGrace { g,8( } g4)-.-3
  \acciaccatura g8-3 f4(-2 e f) r
  \grace { g32( a } g4)-.-3 r c,-. c
  \ottava #1
  \bar ":..:" \break

  c'''-\markup { \dynamic p \italic dol. } c c c
  \ottava #0
  \autoBeamOff f,,8_\markup { \italic \small "cresc." }  f8 f8 f8 \autoBeamOn
  f f f f
  b,4-2 c b a b d-4

  \mark \markup { \bold "B Dur." \italic "(Si" \super \flat \italic " majeur)" }
  \bar ":..:" \break
  \key b \major
  b b b
  \bar ":..:"
}

LHI = \relative c' {
  \clef bass
  \key f \major
  \partial 8
  \voiceOne
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt

  %\slashedGrace s8 r4 %% für den Fall, dass das Stück mit einem Vorschlag beginnt!
  %% Lilypond Bug, Workaround
  d,4\rest c4 c c c
  \key b \major
  b8 b b b b b b b
}

LHII = \relative c' {
  \partial 8
  \voiceTwo
  \set fingeringOrientations = #'(left)   %% Akkorde
  \override Fingering.direction = #DOWN %% Einzelnoten
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #DOWN
  s4 c,2 c
  \key b \major
  b2 b b b
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
          \number 2.
        }
        \line \large { F Dur }
        \italic \line { Fa majeur. }
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

