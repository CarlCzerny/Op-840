\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
exercise ="16"
%% wenn erforderlich linken Abstand ändern
\paper {
}
\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
  mutopiatitle        =       \markup { "50 Melodische Übungsstücke, No." \exercise }

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "840, No. 15"

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
  c8 ( c4_> c8 c4 )
}

RH= \relative c'' {
  \time 6/8
  \key b \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 3 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(down up)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto giocoso"
  \partial 8
  d8-1 (
  b'-4 ) r b( a-3 ) r a (
  g-2 ) r g( d-1 ) r f (
  es ) r es ( g-4 f es )
  d4.~ d4 d8-2
  c4
  \changePitch \myPattern { c a'4 c,-1 b-2 }
  b8 ( g'4_> b,8  a-. )
  r8 es'-5 ( d-4-. ) r
  \override Fingering.direction = #UP      %% für Einzelnoten!
  fis,-2_(
  g4.~ ) g8 r \bar ":..:"
  d-1 < fis-2~ a-4~ >4. q8 q q
  < g-1~ b-3~ >4. q8 q q
  \override Fingering.padding = #0.3
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  < a-2 c-4 > ( d-. ) q ( < g,-1 b-3 > d'^. ) q (
  < fis,-2 a-3 > d'-5-. ) d-. d d d-1
  < fis-2~ a-4~ >4._\markup \italic "cresc." q8 q q
  < g-1~ b-3~ >4. q8 q < g-2 b-4 >
  %\override Fingering.outside-staff-priority = ##f

  %\revert Fingering.staff-padding
  %\override Fingering.avoid-slur = #'outside
  < a-3 c-5 > ( d, ) q ( < g-2 b-4 > d ) < g-3 b-5 > (
  < fis-2 a-4 >-. ) d-. e-. fis-3-.\< g-1-. a-.
  b-. \f r b ( a ) r a (
  g ) r g-3 ( d-1 ) r d (
  es ) r es ( g f es )
  d4.~ d8 es d
  c4 ( a'8 ) a4 ( c,8-1 )
  b4-2 ( g'8 ) a,4 ( es'8 )
  d r g, ( b4 a8 g ) r r r4^\markup { "Fine." }
  %\once \override Slur.positions = #'(2.8 . 0.6)
  \bar ":..:"
  \mark \markup \fontsize #-1.5 { \bold "G Dur." \italic "(Sol majeur)" }
  \bar ":..:" \break
  \key g \major
  d8-1 \p r < g-1 h-3 > ( < a c > < h-3 d-5 >-. ) q-. q-.
  r < d-1 h'-5 > q q ( < c a' > < h g' > )
  r < a fis'-4 >-. q-. < a fis'-4 > ( < h g'-5 >-. ) < c a'>-.
  r < h g' >-. q-. q-. < h-1 d-2 >-. q-.
  e-3 ( g-. ) g-.
  d-2 ( g-. ) g-.
  c,-1-. d'-5-. d-. h,-. d'-. d-.
  a,-. a'-. a-. a,-1-. cis-4-. cis-.
  d-. a-. fis-. d-. r
  \bar ":..:"
  d'-.\mf d-1-. fis'-4-. fis-. d,-. fis'-. fis-.
  d,-1-. g'-5-. g-. g( h,-1 d-3 )
  \ottava #1 c-1-. d'-5-. d-. h,-. d'-. d-.
  c,-. a' ( fis d-. ) d-. d-. \ottava #0
  d,-. fis'-. fis-. d,-. fis'-. fis-.
  d, g' g \ottava #1 g, h' h
  fis, a' a e,-1 cis'-4 cis
  \ottava #0 d_\markup \italic "dim." ( a fis d-1-. ) d-5\p ( c!-4 )
  h-3-. < g f > ( < a c > < h d >-. ) q-. q-.
  < h-1 d-2 >-. < d-1 h'-5>-. q-. q ( < c a'>-. ) < h g'>-.
  < a fis'-4 >-. q-. q-. q ( < h g'>-. ) < c a' >-.
  q ( <h g' > ) q-. q-. d-2-. d-2-.
  e-1-. g'-5-. g-. c,,-. e'-. e-.
  h,-. d'-. d-. g,,-. h'-. h-.
  a,-. c'-. c-. fis,,-1-. a'-5-. a-.
  g-5-. d-. h-. g-. r
  \bar ":..:"
}

LH = \relative c' {
  \clef bass
  \key b \major
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 3 )  %% abhängig vom Takt
  \partial 8
  %\slashedGrace s8 r4 %% für den Fall, dass das Stück mit einem Vorschlag beginnt!
  %% Lilypond Bug, Workaround
  r8
  g ( b d fis, c' d g, b d g, b d )
  g, ( c es g, c es g, b d g, b d )
  gis, a d fis, a d g, b d g, b d
  c, es a d, a' c g b d g, r
  r d ( fis a d ) r r
  d, ( g b d ) r r
  < fis, d' >4 r8 < g d'>4 r8
  d4 r8 r4 r8
  d'8 ( a fis d ) r r
  d' ( b g d ) r r
  < fis d' >4 r8 < g d'>4 r8
  d4 r8 r4 r8
  g b d fis, c' d
  g, b d g, b d
  g, c es g, c es
  g, b d g, b d
  fis, a d fis, a d
  g, b d c, es a
  d, g b d, gis c
  < g b > ( d' b g ) r
  \key g \major
  r g, r r < g' d' > r r
  g, r r < g' d' > r r
  d r r d' r r
  g, r r g' r r
  \clef treble
  < c g' > r r < h g' > r r
  \clef bass
  < fis, d'> r r < g d'> r r
  \clef treble
  < a d fis > r r < a e' g > r r
  < d fis > r r r4
  \clef bass
  r8 < d, a' c> r r q r r
  < g h >2.
  < fis a d >8 r r < g h d > r r
  < d fis >4 r8 r4 r8 < d a' c >4 r8 q4 r8
  < g h >4 r8 < g h d >4.
  \clef treble
  < a d fis>  < a e' g >
  < d fis>8 r r r4 r8
  \clef bass
  g,, r r < g' d' > r r
  g, r r < g' d' > r r
  d, r r d' r r
  g, r r g' r r
  < c, g'>4. q
  < d g h > q
  < d fis a > < d a' c > <g h>
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 6 . 0 )
  r4_\markup "D.C. sino al fine."
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
        \line \large { D Dur }
        \italic \line { Ré majeur. }
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
  %% Falls erforderlich Zeilenlänge und Einzug ändern
  \layout {

  }
  \midi { }
}
