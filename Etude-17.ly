\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
exercise ="17"

\paper {
  left-margin = #10
}
\layout {
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
    \override NonMusicalPaperColumn.page-break-permission = ##f
  }
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

GEC= { \repeat unfold 3 { g'16*2/3 e c } }
AsFC= { \repeat unfold 3 { as'16*2/3 f c } }
myPattern = {
  c32 ( c c c c8-.\noBeam )
}

nyPattern = {
  c32 ( c c c c [ c c c ] c16-.[ c-. c-. c-.] )
}

RH= \relative c'' {
  \time 2/4
  \key f \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(1 1 1 1 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto."
  \changePitch \myPattern {
    c-2 d-3 c-2 d-3 c-2 f-2 g f g f-2
    g-2 a g a g-2 c-2 d c d c-2
  }
  a32-2 ( c-4 b a b-2 c-1 d e f-4 e d c b-4 a g f )
  a4 ( g8 ) r
  \changePitch \nyPattern {
    f'-5 e-4 f e f e f e f g, g g
    e'-5 dis e dis e dis e dis e g, g g
  }
  %\once \override Slur.positions = #'(2.8 . 0.6)
  < f-1 d'!-5 >16-.[ \f <e-1 c'-5>-. < d h'> < c a'>-.]
  < h g' >-.[ < a f'>-. < g e'>-. <f d'>-.]
  < e c'>4 r
  \bar ":..:"
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 2 2 )  %% abhängig vom Takt
  < g' b!>8-. q-. <f a>-. q-.
  < e g>4 r16 g,-. c-. e-.
  < b g' >8-. q-. < a f' >-. q-.
  < g e'>4 r
  \changePitch \myPattern {
    c'-1 d-2 c d c f-3 e f e f
    g,-1 fis-2 g-1 fis-2 g-1
    d'-5 cis d cis d
  }
  e,32-3 ( f g f e[ d c d ] e-3 f-1 g a b-4 [ c-1 d-2 e-3 ] )
  f16-5-. c-. a-. c-. f,8 r^\markup "Fine."
  \mark \markup { \bold "F Moll." \italic "(Fa" \italic " mineur)" }
  \key as \major
  as8-4-\markup { \dynamic p \italic "dol." } [ as16. ( g32 f8-. ) as-. ]
  g4-3 ( c )
  f,8-2 f ( g16. f32 e16. f32 g2 )
  b8-4 b16. ( g32 c16.-5 b32 as16. g32 )
  as8 ( c-. ) f,4 (
  g8-. ) b-. c,-. e-. f4 r
  \bar ":..:"
  \set Staff.beatStructure = #'(1 1 1 1 )  %% abhängig vom Takt
  g16*2/3-4 e-2 c-1 \GEC
  as'-4 f-2 c-1 \AsFC
  b'-5 g-3 c,-1 b' g c,
  as'-4 f c as' f c
  g' e c b' g c, as' f c g' e c
  c'8-5 [ c16.-4 ( as32-1 f8-1-. ) f'-5-. ]
  des4-4 ( b-3 )
  as8-2-.[ c-5-.] c,-.[ e-.]
  f4 r
  \bar ":..:"
}

FAsC= { f,16*2/3 as c }
EGC= { e,16*2/3 g c }
EBC= { \repeat unfold 4 { e, b' c } }
CEG= { \repeat unfold 4 { c, e g } }


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
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
  %\once \override Slur.positions = #'(-1 . -4)
  <<
    {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      a8_( c a c
      b c b c )
      a_( c a c
      f, a e g )
      d g d g e g e g
      s2 s4 c,8-. d8\rest
    } \\ {
      \voiceTwo
      f4 f e e
      f f c c
      h h c c
      g8 g' g g
      c,16-. c'-. g-. e-. s4
    }
  >>
  \changePitch \myPattern {
    c'-2 d-1 c-2 d-1 c-2 c d c d c
  }
  c32 ( d c d c [ d c d ] c8-. ) r
  \changePitch \myPattern {
    c, d c d c c d c d c
  }
  \override Fingering.direction = #DOWN  %% für Einzelnoten!

  \changePitch \nyPattern {
    c d c d c d c d c-2 b-3 a-1 g-4
  }
  f8-5\noBeam < f' a> q q
  <<
    {
      \voiceOne
      \mergeDifferentlyHeadedOff
      b,8 < d g> q q
      c < g' b > q q
      a4
    } \\ {
      \voiceTwo
      b,2 c d4 d4\rest
    }
  >>
  \key as \major
  \set Staff.beatStructure = #'(1 1 1 1 )  %% abhängig vom Takt
  f16*2/3 as c \repeat unfold 3 \FAsC
  \EBC
  \repeat unfold 4 \FAsC
  \CEG
  e16*2/3 g c  \repeat unfold 3 \EGC
  \repeat unfold 4 \FAsC
  b, des g b, des g c, g' b c, g' b
  f as c \FAsC f,8 r
  \override Fingering.direction = #UP  %% für Einzelnoten!
  c'8-1-. [ c ( b-2-. ) b-. ]
  as4-3 ( f-1
  e8-2-.[ ) c ( f-1-. ) f-. ]
  c4_4 r

  as16*2/3-5 c-3 f-1 as, c f as, c f as, c f
  b,-4 d f b, d f b, d f b, d f
  c-5 f-2 as-1 c, f as c, g' b c, g' b
  f-4 as c f, as c f,8
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 3 . 0 )
  r_\markup "D.C. sino al fine."
}

Struktur= {
  s2*3 \break
  s2*4 \break
  s2*4 \break
  s2*3 \break
  s2*3 \pageBreak
  s2*3 \break
  s2*4 \break
  s2*4 \break
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
        \line \large { F Dur }
        \italic \line { Fa majeur. }
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
 
  \layout {
     line-width = #190
  }
  \midi { }
}
