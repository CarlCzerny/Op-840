\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
exercise ="1"
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

RH= \relative c'' {
  \partial 4 \accidentalStyle modern
  \override Flag.stroke-style = ##f
  \mark \markup "Allegro giocoso."
  \once \override TextScript.extra-offset = #'( -15 . 5 )
  \slashedGrace a'8\p %-\markup { \small \bold o }
  g8.(-3 fis16
  g8)-.-1 r
  \once \override Voice.Slur #'positions = #'(0 . 0.5)
  \once \override Voice.Slur.eccentricity = #0.0
  \slashedGrace g8( e'-.) r g,-.-1 r \slashedGrace g8 d'8-. r
  g,8-. r \slashedGrace g8 e'-. r \slashedGrace a,8 g8.-3( fis16 g8. fis16-2
  g8-.-1) r
  \once \override Voice.Slur #'positions = #'(1 . 0.7)
  \once \override Voice.Slur.eccentricity = #0.0
  \slashedGrace g8( d'-.) r g,8.-1( a16 g8. a16
  g8-.) r \slashedGrace g8( e'-.) r e,8.-2( c16-1 f8.-3 d16-1
  g8-.-4)_\markup { \italic \small "cresc." } r
  \once \override Voice.Slur #'positions = #'(0.2 . 0)
  \slashedGrace g8( e'-.) r g,-. r  \slashedGrace g8 d'-. r
  g,8-. r \slashedGrace g8 c-. r \slashedGrace a8 g8.-3( fis16-1 g8. a16-4)
  \set fingeringOrientations = #'(left)
  < d,-1 h'-5 >8-. < e-1 c'-5 >-. <  f d' >-. < g e' >-.
  \set fingeringOrientations = #'(left up right down)
  \ottava #1 < a f' >-. < h g' >-. < c a' >-. < d h' >8-.
  < e c' >8-. \ottava #0 r r4 r
  \bar ":..:" \break
  \slashedGrace a,,8\p g8.-3( fis16
  g8-.) r < d f g h> r < f g h d > r \slashedGrace a8 g8.( fis16
  g8) r < e g c >8 r < g c e > r \slashedGrace a8 g8.( fis16
  g8-.) r < g h d >-.\< r < g h f' >-. r < d'-2 g-5 >-. r\!
  < g,_~ d' f( >2\> < g c e) >8\!  r
  \slashedGrace a'8\p g8.-3( fis16
  g8-.) r \slashedGrace g8_\markup { \italic \small "cresc." } e'-. r g,-.-1 r \slashedGrace g8 d'8-. r
  g,8-. r \slashedGrace g8 c-. r r
  \ottava #1 \set fingeringOrientations = #'(left)
  < g'-1 e'-5 >8-.\f < f-1 d'-5 >-. <  e c' >-. < d h' >-.
  < c a' >8-. < h g' >-. <  a f' >-.
  \ottava #0
  < g e' >8-. < f d' >-. <  e c' >-. < d h' >-.
  <  e c' >-. r r4 r4^\markup "Fine." \bar ":..:"
  \key c \minor
  \mark \markup \fontsize #-1.5 { \bold "C Moll." \italic "(Ut mineur.)" }
  \once \override Voice.Slur #'positions = #'(2.2 . 0)
  g,4-1(_\markup { \dynamic p \italic "dol." }
  es'-3) es( d c)
  g'2-5( d)
  \set fingeringOrientations = #'(up)
  es4-3 es( d c < h-2 d-4 >2 g)
  es'4-3 es( d_\markup { \italic \small "cresc." } c
  fis2-3_> g-1_> b4-3\p g-1 fis-2 a-4)  g2 r4
  \bar ":..:"
  \once \override Voice.Slur #'positions = #'(0.5 . 3)
  g4-5( f4.-4 d8-2 es4-3 c-1)
  \once \override Voice.Slur #'positions = #'(0.5 . 3)
  g'( g,)
  g8 r g'4( f4. d8 es4 c)
  < h d g >2.
  \once \override Voice.Slur #'positions = #'(1 . 0.5)
  g4(
  es') es( d c)
  c'2( fis,-2) g4-4( es d g c,) r4 r4 \bar ":|." %\noPageBreak
}

LH = \relative c' {
  \clef bass
  \slashedGrace s8 r4
  \clef treble
  \set fingeringOrientations = #'(left)
  < c-1 e-2 g-4 >8 r < c e g >8 r < g h f' > r < g h f' > r
  < c-3 e-1 >8 r q r q r q r
  < h f' g >8 r q r q r q r
  < c e g >8 r q r < c-5 e-3 >4( < d f >
  < e-3 g-1 >8-.) r < c-1 e-2 g-4 >8 r < g h f' > r q r
  < c-3 e-1 >8 r q r q r q r
  < g d' f > r q r q r q r
  \clef bass
  < c e >8 r c r c, r
  d4\rest
  g,8 r < g' h > r q r r4
  g,8 r < g'-4 c-1 > r q r r4
  g,8 r < g' d' > r q r < g h > r
  h4-2( g c8-.)\! r r4
  \clef treble
  < c e g >8 r q r < h f' g >8 r q r
  < c e g >8 r q r < c e g >8 r q r
  < g d' f > r q r q r q r
  \clef bass
  < c e >8 r c r c, r
  <<
    {
      \key c \minor \partial 4
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(down)
      \override Fingering.direction = #DOWN
      \override Fingering.staff-padding = #'()
      d4\rest
      c8 g' es g c,8 g' es g
      h, g' f g h, g' f g
      c,8 g' es g c,8 g' es g
      s1
      c,8 g' es g c,8 g' es g
      c, a' es a cis, b'-1 e,-3 b'-1
      d, b'-1 g_2 b-1 d, c' fis, c'
      g b d b s4
      s4
      %\override Fingering.extra-offset = #(-0.3 . -1.8)
      g8 h d h g c_2 es_1 c_2
      g8 h d h g8 h d h
      g8 h d h g c es c
      g8 h_(-2 d-1 h-2 \stemDown g^1 f es d^4)
      \stemUp
      c8 g' es g c,8 g' es g
      as, es' c es as, es' c es
      g, es' c es g, f' h, f'
      c8 g' es g d8\rest
    }
    \\
    {
      \voiceTwo
      \set fingeringOrientations = #'(down)
      \override Fingering.direction = #LEFT
      \override Fingering.staff-padding = #'()
      s4 c2-4 c h h c c
      g8( h d g^1 f^2 es f d^4)
      c2 c2
      c cis-5 d-5 d g-4 g8 d8\rest d4\rest
      g2-5 g2-5 g2 g2 g2 g2 g2-5 s2
      c,2 c as as g g c-4_\markup "D.C. sino al fine." s4
    }
  >>
}

\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        %\once \override TextScript.extra-offset = #'( 0 . 0.5)
        %\draw-circle #0.5 #0.3 ##f
        \line { \bold \huge { "№" } \number { \exercise "." } }
        \line \large { C Dur }
        \italic \line { Ut majeur. }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant" \RH
    \new Staff="Bass" \LH
  >>
  \layout { }
  \midi { }
}
