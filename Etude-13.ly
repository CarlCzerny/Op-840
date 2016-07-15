\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
\paper {

  left-margin = 10
  %annotate-spacing = ##t
}
exercise ="13"
%#(set-global-staff-size 20)

\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
  mutopiatitle        =       \markup { "50 Melodische Übungsstücke, No." \exercise }

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "840, No." \exercise

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
  \time 4/4
  \key f \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(1 1 1 1 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \partial 4
  \mark \markup "Molto Allegro animato."
  a8._1 \f a16 d8 r a8 r f' r d r
  e2-4 ( a, )
  e'8-3 r a, r g' r e r
  f2-3 ( d-1 )
  b'8-4 r b r b r b r
  a4. ( f8 d ) r d4
  cis4 cis d < d f >
  < cis e >2.-\markup { \italic "cresc." }
  \bar ":..:"
  a8.-1 \p ( cis!16-2
  e16-4 a, cis-2 a e' a, cis a e' a, cis a e' a, cis a )
  f'-5 a, d-3 a f' a, d a f' a, d a f' a, d a
  g' a, e' a, g' a, e' a, f' a, d a f' a, d a
  < cis-2 e-4 >2 r
  a'8-2 \f r a r d r d r
  b2-3 g
  f8-2 r a r e r a r
  d,4 r
  r^\markup "Fine."
  \bar ":..:"
  \key d \major
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(2 2 )  %% abhängig vom Takt
  \mark \markup { \bold "D Dur." \italic "(Re" \italic " majeur.)" }
  a4-1_\markup { \dynamic p \italic "dol." } (
  fis'4.-4 e8 d ) r a4 (
  fis'4. e8 d ) r a4
  a'-5 ( e g8-4 fis e d
  < cis-2 e-4 >2. )
  e4-1
  e'-5_> ( h8-2 ) r e4_> ( h8 ) r
  d8-4 ( cis h a gis-3 fis gis a-5
  cis,4-2 ) cis ( \slashedGrace e8 d8 cis d h
  a2 ) r4 \bar ":..:"

  <<
    {
      a4 \p \(
      \stemDown
      < e'-2 g!-4 > q < d fis > q
      \stemUp
      fis-5 e-4 d-3 \) r8 a
      a'4-5 ( g-4 ) g-4 ( fis-3 ) e2-5
    }
    \\ {
      s4 s1
      cis2-2 d4 s4 e2-2 d-1 cis-\markup { \italic "cresc." }
    }
  >>
  r4 a (
  fis'4. e8 d ) r d4-1 (
  < h' d >4. < a cis >8 < g h >4 ) r
  < fis-2 a-4 > fis ( \slashedGrace a8 g fis g e d2 ) r4 \bar ":..:"
}

LH = \relative c' {
  \clef bass
  \key f \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.4
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(1 1 1 1 )  %% abhängig vom Takt
  \partial 4
  r4
  d,16 a' f a d, a' f a c, a' f a d, a' f a
  cis, a' g a cis, a' g a cis, a' g a cis, a' g a
  cis, a' e a cis, a' e a cis, a' e a cis, a' e a
  d, a' f a d, a' f a d, a' f a d, a' f a
  g d' b d g, d' b d g, d' b d g, d' b d
  f, d' a d f, d' a d f, d' a d f, d' a d
  e, a g a e a g a d, a' f a d, a' f a
  a,8[ ( cis e a] a,4 )
  r a' a g-2 g-1
  f2 d cis4 cis d d
  a'8[ ( a, cis e] a-1[ b-2 a-3 g-4] )
  f16-5 d' a d f, d' a d f, d' a d f, d' a d
  g, d' b d g, d' b d g, d' b d g, d' b d
  a f' d f a, f' d f a, f' cis g' a, g' cis, g'
  < d-3 f-2 >8\noBeam d-1 ( a-2 f-4 ) d r
  \key d \major r4

  <<
    \relative c {
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
      fis8 a g a fis a fis a
      fis a g a fis a fis a
      cis,2 d
      s2 s2 gis gis a d, e e a
    }
    \\
    \relative c {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #UP
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Staff.beatStructure = #'(2 2 )  %% abhängig vom Takt
      \override NoteColumn.force-hshift = #0.6
      d2 d2 d d
      \revert NoteColumn.force-hshift
      cis8 a' g a d, a' fis a
      a,8-( cis e g-1 cis-2 e-1 cis-2 a-4 )

      gis e' d e gis, e' d e
      a, e' cis e d, a' fis a
      e cis' a cis e, d' gis, d'
      a cis e cis a4
    }
  >>
  r4
  cis'8-3 ( a-5 cis a d a d a
  \clef treble
  \override Fingering.direction = #DOWN %% Einzelnoten
  g' a, g' a, fis'-1 a,-5 fis' a,- )
  cis-4 ( a' cis, a' d, a' d, a' )
  a, ( a' e cis-3 \clef bass a-1 g fis e-4 )
  <<
    \relative c {
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
      d8 a' fis a dis, a' fis a
      g, d' h d g, d' h d
      a fis' d fis a, g' cis , g'
      d fis a fis d4
    }
    \\
    \relative c {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #UP
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Staff.beatStructure = #'(2 2 )  %% abhängig vom Takt
      \override TextScript.self-alignment-X = #RIGHT
      d2 d g, g a a d
      \override TextScript.self-alignment-X = #RIGHT
      \override TextScript.extra-offset = #'( 3 . 0 )
      d4_\markup "D.C. sino al fine."
    }
  >>
}

EtudeXIII=
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
    \RH
    \new Staff="Bass"
    \LH
  >>
  \layout {

  }
  %\midi { }
}
#'()
\EtudeXIII
