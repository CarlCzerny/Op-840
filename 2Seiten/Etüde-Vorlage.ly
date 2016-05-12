\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
%% wenn erforderlich linken Abstand ändern
\paper {
  %% hier für den Fall, dass Änderungen erforderlich sind
  left-margin = #5
  top-margin = #20
  system-system-spacing.basic-distance = #8
  min-systems-per-page = #6

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
  %\accidentalStyle modern
  \time 6/8
  \key f \major \partial 8
  %\set Staff.explicitKeySignatureVisibility = #all-invisible
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 2 2 ) % abhängig vom Takt

  \mark \markup "Allegretto animato"
  \once \override TextScript.extra-offset = #'( -16.5 . 3.3 )
  %% so kriege ich das "o" zu N.o
  \once \override Voice.Slur #'positions = #'(2.8 . 0.6)
  c8-.-1%-\markup { \small \bold o }
  \grace { f32( g } f8)-.-3 r c-. \slashedGrace { g'32( f } g8)-.-3 r c,-. %Takt 1
  \grace { a'32( b } a8)-.-3 r f-. \acciaccatura g8-3 f8(-2 e f)
  \grace { g32( a } g8)-.-3 r c,-. \grace { a'32( b } a8)-.-3 r c,-. |

  f a c f c a f8 r8 \ottava #0 \break
  \bar ":..:"
  g'16-5(\p f es! d c-1 b-4 a g f-1 e-3 d c-1 b-2 a)-\markup { \dynamic p \italic dol. }
  b(-2 c b a b d-4
  \autoBeamOff f8-5-.) \autoBeamOn b16-3(_\markup { \italic \small "cresc." } c d c) \break
  \mark \markup { \bold "B Dur." \italic "(Si" \super \flat \italic " majeur)" }
  \bar ":..:"
  \key b \major
  \bar ":..:"
}

LHI = \relative c' {
  \clef bass  \key f \major \partial 8
  \voiceOne
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.staff-padding = #'()
  \slashedGrace s8 r4 %% für den Fall, dass das Stück mit einem Vorschlag beginnt!
  %% Lilypond Bug, Workaround
  d8\rest

}

LHII = \relative c' {
  \partial 8
  \voiceTwo
  \set fingeringOrientations = #'(left)   %% Akkorde
  \override Fingering.direction = #DOWN %% Einzelnoten
  \override Fingering.staff-padding = #'()
  s8

  b16^( d f b f d \stemUp b8^.) \stemNeutral d8\rest d8\rest
  d,8\rest_\markup "D.C. sino al fine."
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
    indent = #15
    ragged-last-bottom = ##f
    ragged-last = ##f
    ragged-bottom = ##f
    line-width = #200
  }
  %\midi { }
}

