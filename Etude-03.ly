\version "2.19.37"

\language "deutsch"
\include "Papier+Layout.ly"
exercise="3"

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
  %\accidentalStyle modern
  \key c \minor \time 3/8
  \mark \markup  "Andantino con moto."
  \override Fingering.direction = #UP
  \set fingeringOrientations = #'(left)
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 ) % abhängig vom Takt
  < es, c' >8 %-\markup { \small \bold o }
  q q
  <<
    { es'4-5( c8-3) }
    \\
    { g4.-1 }
  >>
  < h-2 d-4 >8 q q
  < d-3 f-5 >4( < g,-1 d'-5 >8 < g-1 es'-4 >) q q \break
  < es'-3 g-5 >( < d f > < c-1 es-3 > < h  d >4 < c es >8 < h d >) r
  g'-3  as-4( d,) r as'-4( d,) r \break
  g-2( c) r g-2( c) r
  < d,-1 f-3 >( < es g > < f-3 as-5 >)

  < c-1 es-3 >( < d f >) < f,-1 h-4 >( < f d' >4. < es c' >8) r r
  \bar ":..:" \break
  b'4-1( es8-2 g8.-4 f16 es8)
  es16-2( d[ f es d8)] d4.
  b4-1( f'8-3 as8.-5 g16 f8) \break
  f16-3( es g f es8) es4.
  < h d g >8 q q
  <<
    { g'4( f8-4) }
    \\
    { < h, d >4. }
  >>
  < g c es-4 >8 q q
  < g c es >4 g'16( es) \break
  d8( as') r
  g( h,) r
  < f d' >4.( < es c' >8) r r^\markup "Fine."
  \bar ":..:"
  \mark \markup \fontsize #-1.5 { \bold "C Dur." \italic "(Ut majeur)" }
  \key c \major
  \set Timing.baseMoment = #(ly:make-moment 1/16)
  \set Staff.beatStructure = #'(2 2 2 )
  e16-1(-\markup { \dynamic p \italic dol. } g-2) c-4( e-5) d-3( c-2)
  \once \override Voice.Slur #'positions = #'(0 . 3)
  \slashedGrace h8-1( f'16-.-5)[ r32 f( d8.-3 h16-2)]
  g16( h) d( f) e( d)
  \once \override Slur.positions = #'(3 . 3.5)
  \slashedGrace c8-1( g'16-.)[ r32 f( e8.-3 c16-1)] \break
  a'32-5( g fis e d16[ d'-.) d-. d-.]
  d32-5( c h a g16[ g'-.) g-. g-.]
  g16([ d h g-1] \slashedGrace h8 a32-2 d a h)
  a8( g4) \bar ":..:" \break
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 ) % abhängig vom Takt
  \set fingeringOrientations = #'(left)
  < g, h d f! >8 q q
  \autoBeamOff < d'-2 f-4 >16([ < e g > < d f >  < c e >]  < h-2 d-4 >8) \autoBeamOn
  < f' g d' > q q < f g d' >4( c'32-4 h a g)
  e'16-.-5[ r32 e( c8. g16-1)]
  \autoBeamOff a-2([ c-4)] \autoBeamOn < g-1 h-3 >-. < f-1 a-3 >-. < e g >-. < d f >-.
  \autoBeamOff  e-2([ c' g e-1] \autoBeamOn \slashedGrace e8-3 d32-2 c d e)
  c8 r r
}

LHI = \relative c' {
  \set fingeringOrientations = #'(down)
  \override Fingering.direction = #DOWN
  \override Fingering.staff-padding = #'()
  \clef bass  \key c \minor
  \voiceOne
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 ) % abhängig vom Takt
  c,4.
  s4. s d8\rest g-5( h-3 c4.-2)
  s s s
  f,8 < as h d > q f8 < as h d > q
  es < g c > q es < g c > q
  s4. s4.
  g,8( h g c) d8\rest d8\rest
  r8 b'-1 b-1 r8 b b r8 as as r8 as as r8 as as r8 as as
  r b b r b b
  s4. s s s
  f8 < a d > q g < d' f > q
  s4. s4.
  \set fingeringOrientations = #'(left)
  \key c \major
  c,8 < e g > q
  d < f g h > q d q q
  e < g c > q fis < c' d > q
  g < h d > q d, < g h > < fis c' > s4.
  s s s
  \once \override Slur.positions = #'(3 . 3.5)
  \stemUp g,8( \stemNeutral g'4)
  c,8 < e g > q f a d
  g, < c-2 e-1 > < h d >
}

LHII = \relative c' {
  \override Fingering.staff-padding = #'()
  \voiceTwo
  \set fingeringOrientations = #'(left up)
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 ) % abhängig vom Takt
  s4.
  d,8\rest c-4^( es-2^) g4.
  s4. s c8-2^( h c g g' fis g)  d,8\rest d8\rest
  f4. f4. es4. es4.
  f4 f8-2 g4-1 g8 s4. s4.
  < es-4 g-2 >4. q
  < b-5 f'-2 > q
  < b-5 d-3 > q
  < es-4 g-2 >4. q
  g,8( h d g g,) d'8\rest
  c^( es g c c,) d8\rest
  f4. g
  g8-4^( h g c) d,8\rest d8\rest
  c4. d d e fis g d4 d8
  < d fis c' >8 < g h >4
  \override Fingering.direction = #UP
  g,16-5^( h-4 d-2 g-1 h-2 d-1)
  g,8-5 g'4-1
  g16-1^( d-2 h-4 g-1 d h)
  s4.
  c4. f g4 \tweak Stem.transparent ##t g'8 < c, e>8
  %\once \override TextScript.extra-offset = #'( -10 . 0 )
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 10 . 0 )
  c,4^>_\markup "D.C. sino al fine."
}

\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number { \exercise "." } }
        \line \large { C Moll }
        \italic \line { Ut mineur. }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant" \RH

    \new Staff="Bass"
    <<
      \new Voice = "first"
      \relative c'
      \LHI
      \new Voice= "second"
      \LHII
    >>
  >>
  \layout { }
  \midi { }
}
