\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
%% wenn erforderlich linken Abstand ändern
\paper {
}
exercise ="6"
\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
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

\layout {
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
    \override NonMusicalPaperColumn.page-break-permission = ##f
  }
}
RH= \relative c'' {
  %\accidentalStyle modern
  \time 6/8
  \key c \major \partial 8
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 3 ) % abhängig vom Takt
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \set fingeringOrientations = #'(up) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \mark \markup "Allegretto moderato"
  \override Slur.direction = #UP
  \once \override Voice.Slur #'positions = #'(2.8 . 0.6)

  \slashedGrace f8-\markup { \dynamic p \italic dol. } e16-3 ( dis-2
  e8-1 a-3 c-5_>~ c a e )
  e( h' d_>~ d h e, )
  e8-1 ( a-3 c~-5_> c a e )
  gis-2 ( h4~ ) h8 e, e e-1 ( a16-2_\markup { \italic "cresc." } h c8~-4 c h-2 a-1 )
  \slashedGrace c8 b16-2 ( a b d-4 f8~ f e d )
  c4-2 ( e8-5 h!4 e8 a,4. r8 r)
  % \acciaccatura g8-3 f8 \ottava #0
  \bar ":..:"
  e8\p e(\< fis gis-3 a-1 h c)
  c4-3\sf\> ( h8 a ) r a\!
  a-5 ( a, ) a \grace { c16 d! } c8.-3 ( h16 a8 )
  < gis~ h^~ e~ >4. < gis h e >8 e' e
  e-1 ( a-2 c-4 \grace { c16 d } c8.-3 h16-2 a8-1 )
  \grace { f16-1 b-2 d-4 } f4.-5-.~ f8( e d ) c-2 ( e-5-. ) e-. h ( e-. ) e-.
  a,4. r8
  \once \override TextScript.self-alignment-X = #RIGHT
  \once \override TextScript.extra-offset = #'( 3 . 0 )
  r8^\markup "Fine."
  % g-\markup { \dynamic p \italic dol. }
  % b(-2 c b a b d-4
  %\autoBeamOff f8-5-.) \autoBeamOn b16-3(_\markup { \italic \small "cresc." } c d c)
  \mark \markup \fontsize #-1.5 { \bold "A Dur." \italic "(La majeur.)" }
  \bar ":..:"
  \key a \major
  e8-\markup { \dynamic p \italic dol. }
  < cis-2 e-4 >4. ( < a-1 cis-2 >8 < d-3 fis-5 > < cis e > < h~ d~ >4. )
  < h d >8 < h-2 d-4 > q
  < h-2 d-4 >4. ( < gis-1 h-2 >8 < cis-3 e-5 > < h d > )
  < a~ cis~ >4. < a cis >8
  %\once \override Voice.Slur #'positions = #'(3 . 3.5)
  \offsetPositions #'(1 . 0)
  a( e' )
  dis16-3 ( cis h cis dis e-1 fis\< gis a-1 h cis dis-4
  \ottava #1 e-1\> gis h-5 a gis fis\! e-1 dis-4 cis h a-1 gis-3 ) \ottava #0
  fis-2\p ( gis fis eis fis-2 a-5 ) h,8-. cis-. dis-.
  e16-2 ( h e gis h gis e8 ) r
  \bar ":..:"
  e-5\f < h d! gis~ >4. gis'8 ( fis e )
  < cis-2 e-3 >4. a'8 ( cis, e )
  \override Fingering.avoid-slur = #'outside
  %\offsetPositions #'(-10 . 0)
  \override Slur.outside-staff-priority = #500
  \override Fingering.outside-staff-priority = #1000
  < cis-2 e-4 >  ( < h d > ) q < h-2 d-4 > ( < a cis > ) q
  < gis h >4. r8 e'-5 e
  \override Fingering.avoid-slur = #'inside
  \override Fingering.outside-staff-priority = #100
  cis16-3 ( h a h cis d-1 e_\markup { \italic "cresc." } fis gis-4 a-1 cis-3 a-1
  gis-3 fis eis fis gis ais-4 h-1 cis-2 e!-4 d cis h )
  e-5\sf ( cis a e cis' a d-5_\markup { \italic "dim." } h-3 gis-1 e-1 d-4 h-2
  a-1 cis e a e cis a8 ) r
  \bar ":..:"
}

LHI = \relative c' {
  \clef bass \key c \major \partial 8
  \voiceOne
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
   \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \slashedGrace s8 d,8\rest
  a'8 < c e > q a q q
  gis < h e > q gis q q
  a < c e > q f, < a dis > q
  s2.
  a8 < c e >8 q a q q
  d, < f b > q d q q
  e < a c > q e < fis d' > q
  s2.
  e8 < h' d > q e, < a c > q
  e < gis d' > q a < c e > q
  f, < a dis > q f q q s2.
  c8 < e a > q c q q
  d < f b > q d q q
  e < a c > q e < gis d' > q
  \key a \major
}

LHII = \relative c' {
  \partial 8
  \voiceTwo
  \set fingeringOrientations = #'(left)   %% Akkorde
  \override Fingering.direction = #DOWN %% Einzelnoten
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  s8
  a4. a gis gis a f
  e8^( gis h e-1 d!-2 h-4 )
  a4. a d, d e e < a-2 c-4 >8^( e' c a ) d,8\rest d8\rest
  e4. e e a f f
  e8^( gis h e) e,-3 ( d-4
  c4. ) c
  d d e e
  < a c >8 e-2^( c-3 a-5 ) d8\rest d8\rest
  a16-5^( cis-3 d e-1 fis-3 gis a8 ) d,8\rest d8\rest
  \stemUp
  e,16-5_( gis-3 h-2 e-1 gis h \stemDown e8 ) d,8\rest d8\rest
  \stemUp
  e,16 ( gis a h-1 cis-3 d \stemDown e8 ) d8\rest d8\rest
  a16 cis e a e cis \stemUp a8 d8\rest d8\rest
  \clef treble
  < a' h dis fis >4 h'8\rest < a, h dis fis >4 h'8\rest
  < gis, h e >4 h'8\rest < gis, h e >4 h'8\rest
  < a, cis fis >4 h'8\rest < a, cis fis >4 h'8\rest
  < e,~ gis^~ > 4. < e gis >8 h'8\rest h8\rest
  \clef bass
  \stemUp
  \offsetPositions #'(1 . -4)
  e,,,16_( gis h e gis h \stemDown e8 ) d,8\rest d8\rest
  \stemUp
  \offsetPositions #'(0 . -1)
  e,16-5_( a-3 cis-2 e-1 a-3 cis-2 \stemDown e8 ) d,8\rest d8\rest
  < gis e' >4 d8\rest < a' e' >4  d,8\rest
  \override Fingering.direction = #UP
  e16^( e' d cis-3 h-1 a gis fis-4 e-1 d cis h-4 )
  \stemUp a4 \stemDown d8\rest < cis e a >4 d8\rest
  < d fis h >4 d8\rest < d fis h >4 d8\rest
  < e a cis >4 d8\rest < e gis d' >4 d8\rest
  < a'~ cis^~ >4. < a cis >8
  \override TextScript.self-alignment-X = #RIGHT
  d,8\rest_\markup "D.C. sino al fine."
}

Struktur= {
  %\grace s8
  \slashedGrace { s8 }
  s16 s16
  s2.*5 \break
  \slashedGrace { s8 } s2.*5 \break
  s2.*4 \break
  s2.*5 \break
  s2.*4
  \pageBreak
  s2.*5 \break

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
        \line \large { A moll. }
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
      \new Voice = "first"
      \relative c'
      \LHI
      \new Voice= "second"
      \LHII
      \new Voice \Struktur
    >>
  >>
  \layout { }
  \midi { }
}
