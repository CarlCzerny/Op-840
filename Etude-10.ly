\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
exercise ="10"

\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
  mutopiatitle        =       \markup { "50 Melodische Übungsstücke, No." \exercise }

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "840, No. 10"

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

\paper {

}

RH= \relative c' {
  \time 4/4
  \key g \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegro viavce"

  \once \override Slur.positions = #'(2 . -2)
  r16 e-1 ( fis g-3 a-1 h cis dis e4-5 h8-. ) r
  r16 g-2 ( a-1 h cis dis-4 e-1 fis g4-3 e8-. ) r
  r16 h ( cis dis e-1 gis g a h8-. ) < g h >-. < fis a >-. < e g >-.
  < dis-2 fis-3 >-. < e-1 g-4 >-. < dis fis >-. < e g >-. < dis fis >-.
  h [ ( \p dis fis ) ]
  a8-5-.\noBeam a16-4 ( g fis4-> ) c'8-5-.\noBeam c16-4 ( h a4-> )
  g8-1-.\noBeam g16-3 ( a h4-> ) fis8-2-.\noBeam fis16-2 ( g a4-> )
  g8-. e-. g-. e-. h'-. h,-. cis-. dis-.
  e8-. h-. g'-. h,-. e-. r r4
  < d! g h >2 r8 q q q
  < fis -2 a-4 >16 ( d e fis g-1 a h cis d8-. ) a-. fis-. dis-.
  < h e g >2 r8 q q q
  < dis-2 fis-4 >16 ( h cis dis e-1 fis gis ais h8-5-.\> ) h-3-. h-. h-.\!
  c!-4-. \p c16 ( h a4-2_> ) a8-4-. a16-4 ( g fis4_> )
  g8-3-. g16-1 ( h-2 e4.-5_> ) ( d!16-4 c h a-1 g-3 fis )
  h8-. h-. g-. e-2-. h-. h-. cis-. dis-.
  e-. h-. g'-. h,-. e-. r r4-\markup "Fine." \bar ":..:"
  \key e \major
  \mark \markup { \bold "E Dur." \italic "(Mi" \italic " majeur.)" }
  gis4-3-\markup { \dynamic p \italic "dol.c" } ( gis h4.-5_> a16 gis )
  fis8.-2 ( gis16 fis8. fis16 fis2 )
  fis4-2 fis ( a4.-4_> gis16 fis
  e8.-1 fis16 e8. fis16 e2 )
  cis'4-2 ( cis e4.-4_> dis16 cis
  h4-1 gis'8.-3 fis16 e8.-1 dis16-4 cis8. h16 )
  a8.-1 ( h16 a8.-3 h16 gis8. h16 gis8. h16-5 )
  fis2-2 r
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(1 1 1 1 )
  \tuplet 3/2
  {
    h8-5 ( a-4 fis-3 ) dis-2-. dis-2-. dis-2-.
    h'8 ( a fis ) dis-. dis-. dis-.
    e-1 ( gis h gis-2 h e
  } h4.._> gis16 )
  \tuplet 3/2
  {
    h8 ( a fis ) dis-. dis-. dis-.
    h'8 ( a fis ) dis-. dis-. dis-.
    e ( gis h gis h e
  }  h2-3_> )
  h4-1 h gis'-3_> ( fis8. e16
  dis8.-4 cis16 h8. a16-1 gis8.-3 fis16-2 a8.-4 cis16-5 )
  h8.-4 ( gis16 e8.-1 ) e16-3 ( dis8. a'16 fis8. dis16
  e2 ) r2
  \bar ":..:"
}

LH = \relative c {
  \clef bass
  \key g \major
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 )  %% abhängig vom Takt
  < e g h >2 r8 q q q
  < e g h >2 r8 q q q
  < e g h >2 r8 e'-1-. dis-. e-.
  h-3-. ais-. h-. ais-. b-. r r4
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
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      dis8 < fis a h > q q dis < fis a c > q q
      e < g h > q q a, < c fis > q q
      h < e g > q q h < fis a > q q
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
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      dis'2 dis e a, h h
    }
  >>
  < e g >4 q < e g >8 r r4
  \clef bass
  r16 g,,-5 ( a h c d-1 e-3 fis-2 ) g4-1 ( h-2
  d ) d, r2
  r16 e,-5 ( fis g a h-1 cis-3 dis ) e4-1 ( g-2
  h ) h, r2
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
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      dis2 dis e a, h h s1

    } \\ {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #DOWN %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #DOWN
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Staff.beatStructure = #'(1 1 1 1 )  %% abhängig vom Takt
      dis8 < fis a c > q q
      dis < fis a h > q q
      e < g h > q q
      a, < c fis > q q
      h < e g > q q
      h < fis' a > q q
      < e g >4 q < e g >8 d8\rest d4\rest
    }
  >>
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
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt

      \key e \major
      \omit TupletNumber
      \override TupletBracket.bracket-visibility = ##f
      \set Staff.beatStructure = #'(1 1 1 1 )
      \clef treble
      \tuplet 3/2  { e'8_4 gis_2 h_1 e, gis h  e, gis h  e, gis h }
      \tuplet 3/2  { dis,-5 a' h dis, a' h dis, a' h dis, a' h }
      \tuplet 3/2 { h, dis a' h, dis a' h, dis a' h, dis a' }
      \tuplet 3/2  { e8_4 gis_2 h_1 e, gis h  e, gis h  e, gis h }
      \clef bass
      a,4 a a a
      gis gis gis gis
      dis dis e e
    } \\ {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #DOWN %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #DOWN
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Staff.beatStructure = #'(1 1 1 1 )  %% abhängig vom Takt
      \omit TupletNumber
      \override TupletBracket.bracket-visibility = ##f
      e'4 e e e
      dis dis dis dis
      h h h h
      e e e e
      \tuplet 3/2 {
        a,8 cis e a, cis e a, cis e a, cis e
        gis, h e gis, h e gis, h e gis, h e
        dis, fis h dis, fis h e, gis h e, gis h
        h, dis fis h fis dis
      }
      \stemUp h d8\rest d4\rest
    }
  >>
  \clef treble
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(1 1 1 1 )  %% abhängig vom Takt
  < h' fis' a >8[ r q] r q [ r q ] r
  < h e gis >8[ r q] r q [ r q ] r
  < h fis' a >8[ r q] r q [ r q ] r
  < e gis >4 q q q
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
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      \omit TupletNumber
      \override TupletBracket.bracket-visibility = ##f
      \set Staff.beatStructure = #'(1 1 1 1 )
      \tuplet 3/2  {
        gis,8 h e gis, h e gis, h e gis, h e
        a, cis fis a, cis fis a, cis fis a, cis fis
        h, e gis h, e gis h, fis' a h, fis' a
        e gis h e, gis h
      }

    } \\ {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #DOWN %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #DOWN
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Staff.beatStructure = #'(1 1 1 1 )  %% abhängig vom Takt
      gis,4 gis gis gis
      a a a a
      h h h h
      e e
      \stemUp e
      \override TextScript.self-alignment-X = #RIGHT
      \override TextScript.extra-offset = #'( 3 . 0 )
      h'4\rest_\markup "D.C. sino al fine."
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
          \number { \exercise "." }
        }
        \line \large { E Moll }
        \italic \line { Mi mineur. }
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
  \layout {
    ragged-last-bottom = ##t
    ragged-right = ##f
  }
  %\midi { }
}
