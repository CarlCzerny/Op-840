\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
exercise ="18"
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
  c16 ( c c8-. )
}
nyPattern= {
  c16 ( c c c c8-. ) c-.
}

oyPattern= { c8-. }

RH= \relative c''' {
  \time 2/4
  \key c \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'around
  \override Slur.direction = #UP
  \mark \markup "Allegretto vivace scherzando."
  c8-3-. \p
  \changePitch \myPattern {
    c h a-1 c h c c h c c h c-3
  }
  \override Fingering.avoid-slur = #'inside
  c16 ( d e8-5 c16 a )
  gis8-2-. h-4-. e,4->
  \changePitch \nyPattern {
    d'-3 e f e d d c-2 d e d c-2 c-4
  }
  \override Fingering #'avoid-slur = #'outside
  % d16-3 ( e f e d8-. ) d-.
  \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
  \changePitch \oyPattern {
    h-3 d e, gis a a
  } a4->
  \bar ":..:"
  \changePitch \oyPattern {
    h-3 h e-5 e
  }
  h4-3 ( gis-2 )
  \changePitch \oyPattern {
    a-4 fis dis h
  }
  h8-1 ( gis'-4-. ) e4-1_>
  \changePitch \oyPattern {
    h'-3 \f h e e h h
  }
  gis4_>
  h8-5 ( a ) fis-. dis-2-.
  e-1-.\> dis16-2 ( e-1 fis gis a-1 h )
  c!8-3-.\p
  \set Staff.beatStructure = #'(2 2 )
  \changePitch \myPattern {
    c h a a h c h a a a h c
  }
  c16-. ( d e8 c16 a )
  gis8-. h-. e,4_>
  \changePitch \nyPattern {
    d' c h_\markup { \italic \small "cresc." } c d e,
    c' h a h c a-2
  }
  h8-3-. h-. e,16 ( fis gis e )
  a8-. a-.
  \once \override TextScript.extra-offset = #'( 2.5 . -1.5 )
  a4->^\markup "Fine."
  \once \override Slur.positions = #'(2.8 . 0.6)
  \bar ":..:"
  %\markup { \dynamic p \italic "dol." }
  \mark \markup { \bold "A Dur." \italic "(La" \italic " majeur)" }
  \key a \major
  \set Staff.beatStructure = #'(4 )
  e4-3-\markup { \dynamic p \italic "dol." }a8-5 cis,-2
  e4-3 d-1
  \override Fingering.avoid-slur = #'inside
  h'8-5 ( gis-4 e-2 d-1 cis2-2 )
  e4 ( a8 cis,-2 h4-1 fis'-4 e8-3 d-2 h-1 gis-2 a4 ) r
  \bar ":..:"
  \override Fingering.avoid-slur = #'around
  h8-1 ( e16 gis h8-5-.[ ) h-.]
  h-5 ( a gis a )
  h,-1 ( dis16 fis a8-4-._\markup { \italic \small "cresc." } ) a-.
  a-3 ( gis-2 fisis-1 gis-2 )
  h-3 ( e h gis-2
  cis4-4_> h16-3 a-1 gis-3 fis
  e-1 dis-2 cis h gis'8-4 [ fis ]
  e-.\> ) e-. e-. e-3-.
  fis16-4 \p ( e dis e-3 a8 [ cis, ]
  e4 d!-1
  h'8 gis e d
  cis2 )
  e'4-5 ( d16 cis h a-1
  gis8-4 fis a d,-1 )
  cis-3 ( e h e a,4 ) r
  \bar ":..:"
}

LH = \relative c' {
  \clef bass
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  < a c e >8 r q r q r q r q r q r
  < e gis h d > r q r
  < gis h e > r q r
  < a c e >8 r q r
  < d, f h > r < e h' d > r
  < a c >4 q
  <<
    {
      \voiceOne
      e2 e2 h e e h h
    } \\ {
      \voiceTwo
      e8 < gis h> q q
      e8 < gis h> q q
      h, < fis' a > q q
      e8 < gis h> q q
      e8 q q q
      h < fis' a > q q
      h, q q q
    }
  >>
  < e gis>8 r r4
  < a c! e >8 r q r
  q r q r
  q r q r
  < e gis h d > r q r
  < gis h e > r q r
  < a c e > r q r
  < d, f h > r < e h' d > r
  < a c >2
  \key a \major
  <<
    {
      \voiceOne
      a2 gis gis a a d, e a
    } \\ {
      \voiceTwo
      a8 cis e cis gis h e h gis h e h
      a cis e cis a cis e cis
      d, fis h fis e h' d h a cis e cis
    }
  >>
  <<
    {
      \voiceOne
      gis2 fis fis e gis \clef treble
      a8 cis fis cis h a' dis, a' gis4 h4\rest \clef bass
    } \\ {
      \voiceTwo
      gis,8 h e h fis h dis h fis h dis h e, h' e h gis h e h
      a2 h e4
    }
  >>
  <<
    {
      \voiceOne
      a,2 gis gis a cis, d
      a'8 cis gis d'
    } \\ {
      \voiceTwo
      a8 cis e cis gis h e h gis h e h a cis e cis
      cis, a' e a d, a' fis a
      e4_( cis <a' cis>8 e' a,\noBeam )
      \override TextScript.self-alignment-X = #RIGHT
      \override TextScript.extra-offset = #'( 3 . 0 )
      d,8\rest_\markup "D.C. sino al fine."
    }
  >>
}

Struktur= {
  s1*3
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
    \new Staff="Bass"
    <<
      \new Voice \LH
      \new Voice \Struktur
    >>
  >>
  %% Falls erforderlich Zeilenlänge und Einzug ändern
  \layout {
  }
  \midi { }
}
