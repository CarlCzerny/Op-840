\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
\paper {
}
exercise ="14"

\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
  mutopiatitle        =       \markup { "50 Melodische Übungsstücke, No." \exercise }

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "840, No. 14"

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
  c8 ( c-. ) c-.
}


RH= \relative c'' {
  \time 6/8
  \key c \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 3 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.4
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto."
  e4 e8-1 ( a4-3 ) a8
  \grace { a32 h } c4.-5_> ( a4  e8
  f4-2 ) f8 ( a-4 g f )
  e4.~ e8 ( f-4 e-3
  d4 ) d8 d-2 ( e-4 d-3
  c4. h8 d f )
  a,4 a8 ( c4 h8 )
  a4 r8 r4 r8
  \bar ":..:"
  \stemUp
  < gis-2 h-4 >4_( \f < a-1 c-3 >8 < h d >4 < a c >8 )
  < a-1 c-3 >4._( < gis-2 h-4 > )
  \stemNeutral
  < a-1 c-3 >4 q8 ( < c e >4 <a c >8 )
  < gis-2 h-4 >2.
  e'8 e e e e e
  e e e e e e
  e ( a-. ) a-. a ( dis, ) dis
  e4 r8 r4 r8
  e4 \f e8 ( a4 ) a8
  c4._> ( a )
  f4 f8 ( a g f )
  e4.~ e8 ( f e
  d4 ) d8 ( h' gis d )
  c4 ( a'8 ) h, ( d f
  e4 ) a,8 ( c4 h8 )
  a4 r8 r4 r8^\markup "Fine."
  \bar ":..:"
  \key a \major
  \mark \markup { \bold "A Dur." \italic "(La" \italic " majeur.)" }
  \set Staff.fingeringOrientations = #'(left) %% für Akkorde!
  <<
    {
      \override Fingering.direction = #DOWN      %% für Einzelnoten!
      \override Fingering.padding = #0.6
      \override Fingering.staff-padding = #'()

      <cis-5>4 ( cis8 cis4 cis8
      <cis-5>4 h8 a4 cis8 )
      <e-5>8 ( d-4-. ) <cis-3>-. e ( d-. ) cis-.
    }
    \\
    {
      \stemUp
      <a-1>4 \once \omit Flag a8 a4 \once \omit Flag a8
      \stemDown
      <gis-2>4. a4 a8
      <h-2>4 <a-1>8 h4 a8
    }
  >>
  \override Fingering.direction = #UP      %% für Einzelnoten!
  < gis~ h~>4. q8\noBeam h-1 ( e-4 )
  \changePitch \myPatternI {
    dis cis h dis  cis h
  }
  h\< ( e-. ) gis-. h4\> ( gis8-4\! )
  fis-3 ( a-. ) fis-. \grace e-4 dis-3 ( fis-. ) dis-.
  e4. r4 r8 \bar ":..:"
  \changePitch \myPatternI { gis-4 fis e gis fis e }
  e4 ( a8 cis,-2 fis-5 e )
  \changePitch \myPatternI { d h e cis a e' }
  h\noBeam e-.\< fis-. gis-3-. a-1-. h-.
  cis4-3\sf cis8 \changePitch \myPatternI { cis h a-1 }
  < fis-3 a-5 >4.\sf\> ( < d-2 fis-4>4 < h d>8 )
  cis-2\p ( fis e ) h ( fis' e ) a,4 r8 r4 r8
  \bar ":..:"
}

LH = \relative c' {
  \clef bass
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set fingeringOrientations = #'(down) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.4
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 3 )  %% abhängig vom Takt
  a8-5 ( c-3 e-1 a, c e a, c e a, c e )
  a, ( d f a, d f a, c e a, c e )
  gis, ( h e gis, h e a, c e d, f h )
  e, a c e, gis d'
  a c e a, r r
  e ( e'-. ) e-. e-. e-. e-.
  e e e e e e
  <<
    {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      a,4. a
    } \\ \relative c' {
      \voiceTwo
      a8 e' e a, e' e
    }
  >>
  \stemDown
  e e' e e e e
  \clef treble
  \stemUp
  < gis-4 h-2 >4_( < a-3 c-1 >8 < h-2 d-1 >4 < a-3 c-1 >8
  < a-3 c-1 >4. < gis-4 h-2 > )
  < a c >_( < f a > )
  < e gis>8_( h'-1 gis-2
  \stemNeutral
  \clef bass e-1 d-2 h-4 )
  \clef bass
  a c e a, c e a, c e a, c e a, d f a, d f
  a, c e a, c e gis, h e gis, h e
  a, c e d, f h
  e, ( a c e, gis d'
  < a c >-.\noBeam ) e ( c a ) r r
  \key a \major
  \set fingeringOrientations = #'(left) %% für Akkorde!
  < a'-3 e'-1>4 q8 q4 q8
  < e d' >4. < a cis >4 < a e' >8
  < gis e' >4 < a e'>8 < gis e'>4 < a e'>8
  e ( gis h e ) r r
  \clef treble
  < h fis' a >4 q8 q4 q8
  < e gis >4 q8 < gis, h e >4 q8
  < a cis fis>4 q8 < h fis' a>4 q8
  < e gis >( h' gis e4 ) r8
  \clef bass
  e, ( h' d e, h' d )
  e, a cis e, a cis
  e, gis h e, a cis
  < e, gis h >4 r8 r4 r8
  a, ( cis e a, cis e d fis a d, fis h )
  e, ( a cis e, gis d' )
  < a cis >_\markup "D.C. sino al fine." ( e cis a ) r
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
        \line \large { A Moll }
        \italic \line { La mineur. }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant"
    \RH
    \new Staff="Bass" \LH
  >>
  \layout {

  }
  \midi { }
}
