
RHAi= \relative c'' {
  \partial 4 \accidentalStyle modern
  \override Flag.stroke-style = ##f
  \mark \markup "Allegro giocoso."
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
  \ottava #1 < a f' >-. < h g' >-. < c a' >-. < d h' >8-. \break
  < e c' >8-. \ottava #0 r r4 r
  \bar ":..:"
  \slashedGrace a,,8\p g8.-3( fis16
  g8-.) r < d f g h> r < f g h d > r \slashedGrace a8 g8.( fis16
  g8) r < e g c >8 r < g c e > r \slashedGrace a8 g8.( fis16
  g8-.) r < g h d >-.\< r < g h f' >-. r < d'-2 g-5 >-. r\!
  < g,_~ d' f( >2\> < g c e) >8\!  r
  \slashedGrace a'8\p g8.-3( fis16
  g8-.) r
  \slashedGrace g8_\markup { \italic \small "cresc." } e'-. r g,-.-1 r
  \slashedGrace g8 d'8-. r
  g,8-. r \slashedGrace g8 c-. r r
  \ottava #1 \set fingeringOrientations = #'(left)
  < g'-1 e'-5 >8-.\f < f-1 d'-5 >-. <  e c' >-. < d h' >-.
  < c a' >8-. < h g' >-. <  a f' >-.
  \ottava #0
  < g e' >8-. < f d' >-. <  e c' >-. < d h' >-.
  <  e c' >-. r r4 r4^\markup "Fine." \bar ":..:" \break
  \key c \minor
  \mark \markup \fontsize #-1.5 { \bold "C Moll." \italic "(Ut mineur.)" }
  \once \override Voice.Slur #'positions = #'(2.2 . 0)
  g,4-1(_\markup { \dynamic p \italic "dol." }
  es'-3) es( d c)
  g'2-5( d)
  \set fingeringOrientations = #'(up)
  es4-3
  \override Fingering.avoid-slur = #'inside
  es( d c < h-2 d-4 >2 g)
  es'4-3 es( d_\markup { \italic \small "cresc." } c \pageBreak
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

LHAi = \relative c' {
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
      g8^( h d g^1 f^2 es f d^4)
      c2 c2
      c cis-5 d-5 d g-4 g8 d8\rest d4\rest
      g2-5 g2-5 g2 g2 g2 g2 g2-5 s2
      c,2 c as as g g c-4_\markup "D.C. sino al fine." s4
    }
  >>
}

RHBi= \relative c'' {
  \time 6/8
  \key f \major \partial 8
  \mark \markup  "Allegretto animato."
  \once \override Voice.Slur #'positions = #'(2.8 . 0.6)
  \once \override TextScript.extra-offset = #'( -16.5 . 3.5 )
  c8-.-1
  \grace { f32( g } f8)-.-3 r c-. \grace { g'32( f } g8)-.-3 r c,-. %Takt 1
  \grace { a'32( b } a8)-.-3 r f-. \acciaccatura g8-3 f8(-2 e f)
  \grace { g32( a } g8)-.-3 r c,-. \grace { a'32( b } a8)-.-3 r c,-. |
  \grace { b'32( c } b8)-. r g-. \grace a8 g(-3 fis8-2 g) |
  \grace { c32 d } c8(-3 a)-. f-.
  \set fingeringOrientations = #'(left)
  < d'-4 f-5 >4(-> < b-2 d-4 >8) |
  \grace {
    c32_\markup { \italic \small "cresc." }
    d
  } c8( a)-. f-. < d' f >4(-> < b d >8) |
  < a c >8-._\p gis'32(-4 f) r16 e32(-2 f) r16 cis32(-2 d) r16 e32(-4 d)-3 r16 c32(-3 b) r16
  < f-2 a-4 >4.( < g b >8) r \bar ":..:"
  c-.-5_\f c8.->( b16 g e) c8-1-. d-. e-3-.
  f-.-1 a-. d-. c4-> c8
  c8.->( b16 g e) c8-1-. d-. e-3-.
  f-. a-. d-. c4-> c8-2
  \grace { d32 e } d8(-3 b)-. f-.  < d' f>4(-> < b d >8)
  \grace { c32 d } c8(-2 a-1-.)-. a'-.-5 \grace { b,32 c } b8(-2 g-.)-. g'-.
  \grace { a,32 b } a8(-2 f-.)-. f'-. \grace { g,32 a } g8(-2 e-.)-. e'-.-4
  f-5-. c-. a-. f-. r^\markup { "Fine." } \pageBreak
  \mark \markup \fontsize #-1.5 { \bold "B Dur." \italic "(Si" \super \flat \italic " majeur)" }
  \bar ":..:"
  \key b \major
  f,8 < d'-4 f-5 >4.( < b-2 d-4 >8)-. q q
  < c-1~ es-3~ >4. < c es >8 es'16-5( d c b-4 a g f g a b-4
  \ottava #1 c-1 d es f-1 g a b-4 a-2 b-3 c d b f8) \ottava #0 r8 f,,_\f \break
  < d' f >4.( < b d >8)-. q-. q-.
  < b g' >4.->( e8-4-.) \ottava #1 c''-4-.\p c-.
  d16-5( c b a g-1 f-4 e d c-1 b-4 a g)
  f a c f c a f8 r8 \ottava #0
  \bar ":..:"
  g'16-5(\p f es! d c-1 b-4 a g f-1 e-3 d c-1 b-2 a)
  b-2( c b a b d-4 \autoBeamOff f8-5-.) \autoBeamOn b16-3(_\markup { \italic "cresc." } c d c
  b a g-1 f-4 e d c-1 b-4 a g f-1 e-2)
  f-1 fis-2 g-1 gis-2 a-1 b-2 h-1 c-2 cis-3 d-1 es-3 e-4
  < d-3 f-5 >4.( < b-2 d-4 >8-.) < c-1 es!-3 >-. < d f >-.
  < es~ g^~ >4. < es g >8 es16-2\p g-1 b-2 es-4
  d-2 f-4 es d c-1 b-4 a g f-1 es-3 d c
  b-2 d-1 f-2 b-4 f d b8 r8
  \bar ":..:"
}

LHI = \relative c {
  \clef bass  \key f \major \partial 8
  \voiceOne
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set fingeringOrientations = #'(down)
  \override Fingering.direction = #DOWN
  \override Fingering.staff-padding = #'()
  d8\rest
  f a c e, b' c
  f, a c f, a c
  c, e g c, f a
  c, e b' e, b' c
  f, a c f, b d
  f, a c f, b d
  f, a c \clef treble b d g c, c'( h c) d8\rest
  b8\rest \clef bass
  c,, < g' b > q c, q q
  c < f a > q c q q
  c < g' b > q c, q q
  f < a c > q f q q
  b, d f b, d f
  a, c f b, d g
  c, f a c, g' b
  s4. s8 s8 d,8\rest
  s2.
  f,16_( a c f c a f8)  d'8\rest d8\rest
  s2. s2. s2.
  s2.
  \clef treble
  < c' f a >4 < c f a >8 < c g' b >4 < c e b' >8
  < f a >8 q q q b8\rest
  b8\rest \clef bass
  s2.
}

LHII = \relative c {
  \partial 8
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.direction = #LEFT
  \override Fingering.staff-padding = #'()
  s8
  f4. e f f c c c e f f f f f b
  c4 s4. s8 c,4. c c c c c f f b, b a b c c
  < f a >8 q q q d8\rest \key b \major s8
  b16-5^( d-3 f-2 b-1 f d \stemUp b8^.) \stemNeutral d8\rest d8\rest
  s2.
  < b'~ d^~ >4. < b d >8 d8\rest d8\rest
  < f, c' es >4 < f c' es >8 < f c' es >4 < f c' es >8
  b,16^( d f b f d \stemUp b8^.) \stemNeutral d8\rest d8\rest
  c16^( e g c g e \stemUp c8^.) \stemNeutral d8\rest d8\rest
  s2. s2.
  < f c' es >4. q
  < b~ d^~ >4. < b d >8 d,8\rest d8\rest
  < c g' b>4. q
  < f a >8 d8\rest d8\rest d4\rest d8\rest
  b16^( d f b f d \stemUp b8^.) \stemNeutral d8\rest d8\rest
  es16-5 g-3 b-2 es-1 b-2 g-3 es8-5 d8\rest d8\rest
  < f b d >4 < f b d >8 < f c' es >4 < f c' es>8
  < b d >8 q q q
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 3 . 0 )
  d,8\rest_\markup "D.C. sino al fine."
}

LHBi=
<<
  \new Voice = "first"
  \relative c'
  \LHI
  \new Voice= "second"
  \LHII
>>

RHCi= \relative c'' {
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
  < d-3 f-5 >4( < g,-1 d'-5 >8 < g-1 es'-4 >) q q
  < es'-3 g-5 >( < d f > < c-1 es-3 > < h  d >4 < c es >8 < h d >) r
  g'-3  as-4( d,) r as'-4( d,) r
  g-2( c) r g-2( c) r
  < d,-1 f-3 >( < es g > < f-3 as-5 >)

  < c-1 es-3 >( < d f >) < f,-1 h-4 >( < f d' >4. < es c' >8) r r
  \bar ":..:" \break
  b'4-1( es8-2 g8.-4 f16 es8)
  es16-2( d[ f es d8)] d4.
  b4-1( f'8-3 as8.-5 g16 f8)
  f16-3( es g f es8) es4. \pageBreak
  < h d g >8 q q
  <<
    { g'4( f8-4) }
    \\
    { < h, d >4. }
  >>
  < g c es-4 >8 q q
  < g c es >4 g'16( es)
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
  \slashedGrace c8-1( g'16-.)[ r32 f( e8.-3 c16-1)]
  a'32-5( g fis e d16[ d'-.) d-. d-.]
  d32-5( c h a g16[ g'-.) g-. g-.]
  g16([ d h g-1] \slashedGrace h8 a32-2 d a h)
  a8( g4) \bar ":..:"
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

LHCi=
<<
  \new Voice = "first"
  \relative c'
  \LHI
  \new Voice= "second"
  \LHII
>>

RHDi= \relative c'' {
  %\accidentalStyle modern
  \time 3/4
  \key b \major \partial 4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(2 1 ) % abhängig vom Takt
  %\override Fingering.direction = #LEFT
  \override Fingering.staff-padding = #'()
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Voice.Fingering.padding = #1
  \mark \markup  "Allegro vivace"
  \once \override TextScript.extra-offset = #'( -18 . 5 )
  %% so kriege ich das "o" zu N.o
  %\once \override Voice.Slur #'positions = #'(2.8 . 0.6)
  d4-1\p %-\markup { \small \bold o }
  d2-1( g4-2 b2-4) b4-3 b2-3( a4 g) r r
  d'8-5( cis d b g) r
  %\once \override Voice.Slur #'positions = #'(5 . 2)
  \slashedGrace a8^( g4-3 fis-2 g-1) < g-1 b-3 >2.( < fis-2 a-4 >4) r r
  d2( a'4 c2) c4
  \set Staff.beatStructure = #'(3 ) % abhängig vom Takt
  c2-2( a4-1 es'2.-4) d4-5( c8 b a g-1 f!-4 es d c-1 b-2 a-1)
  \once \override Voice.Slur #'positions = #'(4 . 7)
  d4-5( fis,-2-.) fis-. g r
  \bar ":..:"
  %\override Fingering.staff-padding = #'(10 . 0)
  d\f < fis a d > q q
  q q q < a'-4 c-5 >2( < fis-2 a-4 >4-.)
  < a c >2( < fis a >4-.)
  < g, b d > q q q q q < b'-3 d-5 >2( < g b >4-.) < b-3 d-5 >2( < g b >4-.)
  es'-.-3 es-. es-. es-. es-. es-.
  < d-2 >2( g4-.)
  \once \override Voice.Slur #'positions = #'(6 . 7)
  < a,-1 >2( es'4-.)
  d( b-.) g-.
  %\override Voice.Fingering.padding = #1
  < c-5 >( a-3-.) fis-2-.
  g-3-. d-. b'-. g r4^\markup { "Fine." } \bar ":..:" \pageBreak
  %% Teil 2 G dur.
  \key g \major
  \mark \markup \fontsize #-1.5 { \bold "G Dur." \italic "(Sol majeur)" }
  \once \override Voice.Slur #'positions = #'(2 . 0)
  d4-\markup { \dynamic p \italic dol. } d( g h)-.
  %\override Voice.Fingering.padding = #1
  < d,-1 h'-5 >2( a'8 g)
  fis4-2( a-3 c-5-.)
  c2-5(_> a8 fis)
  \once \override Voice.Slur #'positions = #'(4 . 2)
  d4( a' < c-5 >-.) c2-4( h8 a) g4( h d-.)
  \once \override Voice.Slur #'positions = #'(-2 . 1)
  d2_>( h8-2 g-1)
  < c-2 e-4 >4-._\markup { \italic \small "cresc." } q-. q-.
  < e g >2( < c e >4)
  < h-1 d-3 >4-. q-. q-.
  < h g' >2(_> < h d >4)
  < a -2 c-4 >-.\f q( d8 c)
  < g-1 h-3 >4-. < g-2 h-4 >( c8 h)
  < fis-2 a-3 >4 < fis a d > q q r4 \bar ":..:" \break
  d,8(\p e fis-3 g-1 a h c-1 d e fis g-1 a h c-1
  \ottava #1 d e fis g-1 a-2 h )
  c4-5 ( a-3 fis-2 )
  d'8-5( c h a g-1 fis-4
  e d c-1 h-3 a g) \ottava #0
  < g-3 h-5 >2.(
  < fis a >4 ) r d d( g h ) d2-5 ( h8-3 g-1 )
  e'2-4 ( c8-2 g-1 g'2.-5 )
  h,4-. h ( d8 h ) a4-1-. a-2 ( c8 a )
  g4-1-. < h, d g >-. q-. q-. r \bar ":..:"
}

LHI = \relative c' {
  \clef bass  \key b \major \partial 4
  \voiceOne
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set fingeringOrientations = #'(left)  %% Akkorde
  \override Fingering.direction = #DOWN  %% Einzelnoten
  \override Fingering.staff-padding = #'()
  d,4\rest
  g4 < b d > q g q q
  d < fis c' > q g < b d > q g q q g q q
  s2. s d4 < fis a > q d q q
  c < es fis a > q c q q b < d g > q c < es a > q d < a' c > q b4 s4
  d,4\rest
  %\once \override Slur.control-points = #'((0.5 . 1) (4 . 4.8) (14 . 4.8) (18.5 . 1))
  \once \override Voice.Slur #'positions = #'(7 . 4)
  d,( fis a d a fis) d d' d d d d
  %\once \override Slur.control-points = #'((0.5 . 1) (4 . 4.8) (14 . 4.8) (18.5 . 1))
  \once \override Voice.Slur #'positions = #'(7 . 4)
  d,( fis a d a fis) d d' d d d d
  c < fis a > q c q q b < d g > q c < es a > q d < g b > q d < a' c > q s2. s4 s4
  \key g \major
  d,4\rest \clef treble
  < g'-3 h-1 >4_. q_. q_. q_. q_. q_.
  < d a' c > q q q q q q q q q q q
  < g h > q q q q q
  c,4 < e g > q c q q \clef bass
  g < h d > q g q q fis < a d > q g < h d > q
  s2. s4 s4 s4
  d, < a' c > q d, q q d q q d q q d < g h > q d q q
  s2. * 6
  d4 < g h > q d < fis c' > q
}

LHII = \relative c' {
  \partial 4
  \voiceTwo
  \set fingeringOrientations = #'(left)
  \override Fingering.direction = #LEFT
  \override Fingering.staff-padding = #'()
  s4
  g2.-4 g d g g g d4 d'4 d d^( a fis)
  d2. d c c b c d g4 d4\rest
  s4 s2. s s s s s s s
  c c b c d d < g b >4 q q q d4\rest
  s4 s2. * 8
  c'2. c g g fis g d4^( a' fis d) d4\rest
  d4\rest d2. d d d d d d4 d' d
  d-1^( c-2 a-4 ) < g h > q q q q q
  < c, e g > q q q q q
  d2. d < g-4 h-2 >4^( d' h g )
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 5 . 0 )
  d4\rest_\markup "D.C. sino al fine."
}

LHDi=
<<
  \new Voice = "first"
  \relative c'
  \LHI
  \new Voice= "second"
  \LHII
>>

RHEi= \relative c'' {
  \time 2/4
  \key c \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(1 1 1 1 ) % abhängig vom Takt
  \mark \markup  "Allegretto animato"
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  r8_\markup { \dynamic p \italic \large "leggierm." }
  c32-.-1 % -\markup { \small \bold o }
  ( d e f g8-5-. ) g32-1 ( a h c
  d8-5-. ) d32-5 ( c h a g8-1-. ) g'32-5 ( f e d
  e8-3-. ) e32-5 ( d c h a8-. ) d32-5 ( c h a
  g8 ) f'!32-4 g f e d_\markup { \italic \large "cresc." } c-1 h-4 a g f-1 e-3 d
  c8-.\f c32 ( d e f g8-. ) g32 ( a h c
  d8-. ) d32 ( c h a g8-. ) h32-5 ( a g f
  e8-. ) a32-5 ( g f e d8-. ) g32-5 ( f e d
  c d e-3 f-1 g a h c ) c,8-. r8
  \bar ":..:"
  \set Staff.beatStructure = #'(4 )
  < h-3 d-5 >8\f q q q
  < c-4 d-5 > q q q < fis,-1 a-2 d-5 > q q q < g h d > q q q r8
  \set Staff.beatStructure = #'(1 1 1 1 )
  d''32-5 ( c h a g8-. ) h32-5 ( a g fis
  e8-. ) e'32-5 ( d c h a8-.) c32-4 ( h a g
  fis-3 g a g fis e d e fis-3 g-1 a h c-1 d e fis )
  \set Staff.beatStructure = #'(2 2 )
  e16\> ( d ) h-. g-1-. f! ( e f d\! )
  \set Staff.beatStructure = #'(1 1 1 1 )
  c8-2-.\p c32-1 ( d e f g8-5-. ) g32 ( a h c
  d8-. ) d32 ( c h a g8-. ) g'32 ( f e d
  < e-3>8-. ) e32-5 ( d c h a8-. ) d32 c h a
  g-1 a h-3 c-1 d_\markup { \italic  \large "cresc." } e f!-4 e d c-1 h-4 a g f-1 e-3 d-2
  \set Staff.beatStructure = #'(4 )
  < c-1 e-3 >8 q q q < a c d > q < c d a' > q
  \set Staff.beatStructure = #'(1 1 1 1 ) %\pageBreak
  h32-5 c d c h a g a h-3 c-1 d e f-1 g a h
  \ottava #1
  c-1 d e f-1 g a h c c,8 \ottava #0 r8^\markup "Fine." \bar ":..:"
  \key es \major
  \set Staff.beatStructure = #'(4 )
  \mark \markup \fontsize #-1.5 { \bold "C moll." \italic "(Ut mineur)" }
  es,4-3-\markup { \dynamic p \italic \large dol. } ( f16 es d c )
  a'4-3 ( b16 a g f )
  es8-2 ( d g d )
  f4 ( es16-. ) g,-1 ( c-2 d-3
  es4-4_\markup { \italic "cresc." } f16-5 es-3 d-2 c-1 )
  c'4-5_> ( b16 as g f )
  \set Staff.beatStructure = #'(2 2 )
  b8-5\f ( g16-4 es-1 as8-5 f16-3 d-1
  es-3 b-1 g'-5 b,-1 es8-3 ) r8 \bar ":..:" \break
  g8-5\p g f16 ( es d c-1
  d4-3 g, )
  g'8 g ( f16 es d c ) d4. g,8_\markup { \italic \large "cresc." }
  es'4-3 ( f16 es d c )
  c'4\sf ( b16 a g f )
  es8-3 ( g16 c, es-3 d-2 f-4 h,  c8 ) r8 r4
  \once \override Voice.Slur #'positions = #'(2.8 . 0.6)

  \bar ":..:"
  \key es \major
  \bar ":..:"
}

LHI = \relative c' {
  \clef bass  \key c \major
  \voiceOne
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 ) % abhängig vom Takt
  \set fingeringOrientations = #'(up)
  \override Fingering.direction = #DOWN
  \override Fingering.staff-padding = #'()
  \clef treble
  c8 < e g > q q h < f' g > q q
  c < e g > d < fis c' > h s8 s4
  c,,8 < e g > q q h < f' g > q q
  \set Staff.beatStructure = #'(2 2 )
  c < e g > g, < h d > e s8 s4
  \set Staff.beatStructure = #'(1 1 1 1 )
  d8\rest g,32-5 ( a h c d8-1 ) \stemDown d32 ( e fis g
  a8-1-. ) a32-4 ( g fis e d4-5^> )
  d8\rest d32-5 ( e fis g a8-1-. ) a32-4 ( h c d
  h8-.-3 ) d32-1 ( c h a g4-5_> )
  \stemUp \set Staff.beatStructure = #'(4 )
  h,8 < d g > q q c < e a > q q d < a' c > q q h  s8 s4
  c8 < e g > q q h < f' g > q q c
  \set Staff.beatStructure = #'(2 2 )
  < e g > d < fis c' > h s8 s4
  s2 s2
  \set Staff.beatStructure = #'(4 )
  g,8-5 < d' f! > q q < c e > q q d,8\rest
  \key es \major \stemDown
  \set Staff.beatStructure = #'(2 2 )
  \once \override Voice.Slur #'positions = #'(2.5 . 3)
  c16 ( g' es g \stemUp c,8 ) d8\rest \stemDown
  \once \override Voice.Slur #'positions = #'(3.5 . 4)
  f16 ( c' as c f,8 ) d8\rest
  g16 ( f' h, f' g, f' h, f' )
  h, ( g' d g c,8-. ) d,8\rest
  c16 ( g' es g  \stemUp c,8-. ) d8\rest \stemDown
  as16 ( f' c f \stemUp as,8-. ) d8\rest \stemDown
  b16^( g' es g b, as' f as ) < es-3 g-1 >8 q q d8\rest
  g16 ( h d h g-5 c-2 es-1 c-2 g h d h g h d h )
  g16 ( h d h g c es c )
  \override Fingering.direction = #UP
  g-5 ( h-2 d-1 h-2 g-1 f es d-4 )
  c16 ( g' es g \stemUp c,8 ) d8\rest \stemDown
  as16 ( f' c f \stemUp as,8 ) d8\rest \stemDown
  g,16 es' c es g, f'
  d f c-4 es g es \stemUp c8
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 5 . 0 )
  d8\rest_\markup "D.C. sino al fine." \pageBreak
}

LHII = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.direction = #LEFT
  \override Fingering.staff-padding = #'()
  c2 h c4 d g8
  h8\rest h4\rest \clef bass
  c,,2 h c4 g4 c8 d8\rest d4\rest
  s2 * 4
  h2 c2 d2 g8
  d8\rest d4\rest \clef treble
  c'2 h2 c4 d g8 h8\rest h4\rest
  \clef bass
  \set Staff.beatStructure = #'(1 1 1 1 )
  c,,8-5-. c32-5^( d e f g8-1-. ) g32-4^( a h c
  f,8-5-. ) f32-3^( g a g fis4-3_> )
}

LHEi=
<<
  \new Voice = "first"
  \relative c'
  \LHI
  \new Voice= "second"
  \LHII
>>

RHFi= \relative c'' {
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

LHFi=
<<
  \new Voice = "first"
  \relative c'
  \LHI
  \new Voice= "second"
  \LHII
>>

RHGi= \relative c'' {
  \time 2/4
  \key g \major \partial 8
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4)  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto grazioso"
  e8-1-\markup { \dynamic p \italic dol. } (
  %\once \override Voice.Slur #'positions = #'(2.8 . 0.6)
  g-3 d h' g fis-2 a d, fis
  \set Staff.beatStructure = #'(2 2)
  g-3 \slashedGrace a8 g16 fis g8-1 h-2 )
  d-4-.[ d-. d-. d-.]
  c-2 ( d16 e d8 c h-1[ g'-5 d-3 h-2]
  a-1 e'-5 d16 c h a g-3 fis a g fis8-. ) d (
  \set Staff.beatStructure = #'(4)
  g d h' g fis a d, fis
  \set Staff.beatStructure = #'(2 2)
  g \slashedGrace a8 g16 fis g8 h )
  d-4-.[ d-. d-. d-.]
  \ottava #1
  d16-1 ( fis-3 a-5 g fis e d-1 c-2 )
  h8 ( g'-. ) a, ( e' ) \ottava #0
  g,-. g-. \slashedGrace a8 g16 ( fis g h
  g8[ h g] )
  \bar ".|:"
  d'16-4 ( cis e8-5-.[ ) d-. cis-. h-.]
  a4-1 ( d16-5 cis h a-2 )
  g8-1 ( a16 h a8-. ) g-1-.
  eis-2 ( fis-3 ) fis4
  r8 d'16-5 ( cis h a g-1 fis-2
  \set Staff.beatStructure = #'(4)
  dis8-2 e-1 g-3 h-5 )
  \set Staff.beatStructure = #'(2 2)
  d,!-1 ( e32-4 d-3 cis-1 d-1 fis8-3 ) e(
  \set Staff.beatStructure = #'(4)
  d d'-5 c!-4 a-3 )
  g-2 ( d h' g-3 fis a d, fis
  \set Staff.beatStructure = #'(2 2)
  g  \slashedGrace a8 g16 fis g8 h )
  d[ d d d] c-1 a'16-5 ( g fis e d-1 c-4
  h a g-1 fis-4 e d c-1 h-2 )
  a8-.[ e' ( d-. ) fis,-2] g4-. r8^\markup "Fine."
  \bar ":..:"
  %\autoBeamOff f,,8_\markup { \italic \small "cresc." }  f8 f8 f8 \autoBeamOn
  \mark \markup \fontsize #-1.5 { \bold "G Moll." \italic "(Sol mineur)" }
  \key b \major
  d8~\p < d b' >-.[_( q r < c es a >-.] )
  r < b d g >[_( r < a d fis >-.] )
  r < g'-2 d'-5 >-._( [ r < d a' c >-. ] r q-.[ r < d fis a-4 >-. ) ] ) ]
  g-1\< ( g'-5 ) f!-4 ( es )
  es-3\> ( d ) c-1 ( b-4\! )
  b-3_( a )
  \once \override Slur.positions = #'(-2 . 0)
  b_( g )
  \stemUp b4_( a8 ) \stemNeutral
  \bar ":..:"
  d-2
  \set Staff.beatStructure = #'(4)
  d8. ( es32 f es8 d c4.-1 d8-2 es8.-3 f32 g f8 es d4.-1 ) d'8-3 ( es d ) d d
  d4-5 ( c16 b a g fis8-2 g-3 fis g )
  a4 r8 d,,~ < d b' >-._([\p q-. r < c es a >-. ] )
  r < b d g > [ r < a d fis > ]
  r < g' d' > [ r < d a' c > ]
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  \override Fingering.direction = #DOWN      %% für Einzelnoten!
  r < d g b > [ r < fis-2 a-4 > ]
  \set Staff.beatStructure = #'(2 2)
  \once \override Slur.positions = #'(1 . -2)
  g\sf ( g' ) f!\p ( es )
  es ( d ) c ( b )
  b_( a ) c-5_( fis,-2 )
  a4_( g8 )
  \bar ":..:"
}

LHGi = \relative c' {
  \clef bass
  \key g \major
  \partial 8

  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt

  %\slashedGrace s8 r4 %% für den Fall, dass das Stück mit einem Vorschlag beginnt!
  %% Lilypond Bug, Workaround
  r8
  \clef treble
  < h-5 g'-2 >4 r8  %\offsetPositions #'(0 . 12) q
  \once \override Slur.positions = #'(-1 . -4)
  q ( < d a' >4 ) r8
  \once \override Slur.positions = #'(-1 . -3)
  q ( < g-2 h-1 >4 ) r8
  \once \override Slur.positions = #'(-1 . -2)
  q ( < d a' >2 )
  \clef bass
  < fis, a d >4 r8 a < g h d >4 r
  <<
    {
      e4 ( a h a8 )
    }
    \\
    {
      < c, e >2 d4.
    }
  >>
  r8
  \clef treble
  < h' g' >4 r8 q
  < d a' >4 r8 q < g h >4 r8 q
  < d a' >2
  \clef bass
  < fis, a d >4. < fis a d >8
  < g h d > r \clef treble < c e a > r
  < d g h >4 < d fis c' >
  <<
    \relative c' {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(down) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(3 )  %% abhängig vom Takt
      h'8 d h s
      \set Staff.beatStructure = #'(4)
      \clef bass
      g, < h d > q q
      fis < a d > q q
      e < a cis > q q
      \stemDown
      d, < a' d > q q
      \stemUp
      fis < a d > q q
      g < h e > q q
      \clef treble
      a < d fis > a < cis g' >
    }
    \\
    \relative c' {
      \voiceTwo
      \set fingeringOrientations = #'(down)
      \override Fingering.direction = #LEFT
      \override Fingering.staff-padding = #'()
      g'4. h8\rest
      g,2 fis e s2 fis g
      a4 a4
    }
  >>
  < d fis >4 r
  < h g' > r8 q ( < d a' >4 ) r8 q (
  < g h >4 ) r8 q ( < d a' >2 )
  \clef bass
  < fis, a d >
  < g h d >4 r
  < c, e a > < d a' c >
  \stemDown
  < g h >8
  \stemUp \once \override Slur.positions = #'(-2 . -1)
  d[ ( g, ] )
  \key b \major
  \override Fingering.direction = #DOWN  %% für Einzelnoten!
  r8 g4-5^( c-2 d c-2 b-5 fis'-2 g-1 d-5 )
  <<
    \relative c {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(left) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
      s2 s2
      < es-2 >4 ( < e-1 > < g-2 > fis8-3 ) d8\rest
      \clef treble
      b' f' f f a, f' f f a, f' f f b, f' f f
      a, < c fis > q q
      \clef bass

      g < b d > q q es, < g cis > q q
    }
    \\
    \relative c {
      \voiceTwo
      \set fingeringOrientations = #'(left) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      < b g' >4^( < c g' > < b g' > < es-1  g-2 > )
      < c-4 > < cis-3 > < d-5>4. s8
      b'2 a a b a g es
    }
  >>
  \stemDown
  < d fis >8 ( d' c! a )
  \stemUp \override Fingering.padding = #0.1
  g,4 ( c d c b-3 fis-5 g-4 )
  <<
    \relative c {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(left) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
      d8 c'-1 s2 s2 s2 <c-1>4 b8
    }
    \\
    \relative c {
      \voiceTwo
      \set fingeringOrientations = #'(up) %% für Akkorde!
      \override Fingering.direction = #DOWN  %% für Einzelnoten!
      \override Fingering.staff-padding = #'()
      d4-5\< ( es8-5\! ) d8\rest < c-5 g'-2>4 (
      < fis-3 a-1 > < g-4 d'-1 > )
      \override Fingering.avoid-slur = #'inside
      \set fingeringOrientations = #'(left) %% für Akkorde!
      < c,-5 es-3 >^( < d a' c > ) < g-4 >4._\markup "D.C. sino al fine."
    }
  >>
}

RHHi= \relative c' {
  \time 2/4
  \key c \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 2 2 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(down)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto vivace"
  \override TextScript.self-alignment-X = #LEFT
  r16 \f < c-1 e-3 >-. < d-1 f-3 >-. < e-1 g-3>-._\markup { \italic "stacc." }
  < f-1 a-3 >-. < g h >-. < a c >-. < h d >-.
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  < c e >-. < d f >-. < e g>-. < f a >-. < g h >-. < a c >-. < h d >-. < c-1 e-3 >-.
  < d-2 f-4>8-. q-. < c e >-. q
  < h d >4 r
  r16 < d,,-2 f-4 >-. < e-2 g-4>-. < f-2 a-4 >-. < g-2 h-4 >-. < a c >-. < h d >-. < c e >-.
  < d f >-. < e g>-. < f a >-. < g h >-. < a c >-. < h d >-. < c-2 e-4 >-. < d-3 f-5 >-.
  < c-2 e-4>8-. < g c e-5 >-. < f h d >-. q-. < e c' >4 r \bar ":..:"
  r16 \f < e'-1 g-3>-. < d-1 f-3 >-. < c-1 e-3 >-. < h-1 d-3 >-. < a c >-. < g h >-. < f a >-.
  < e g>-. < d f >-. < c e >-. < h d >-. < a c >-. < g h >-. < f a >-.
  \set fingeringOrientations = #'(down)     %% für Akkorde!
  < e-1 g-3>-.
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  < e-2 a-5 >8 q-. < e g >-. q-. < d f >4 r
  \set fingeringOrientations = #'(down)     %% für Akkorde!
  r16 \sf < d-1 h'-5 >-. < e-1 c'-5 >-. < f-1 d'-5 >-.
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  < g-1 e'-5 >-. < a f' >-. < h g' >-. < c a' >-.
  \ottava #1
  < d h' > < e c' > < f d' > < g e' > < a f' > < h g' > < c a' > < d h' >
  < e c' >8-. \ff < c-1 g'-4 >-. < g c e-5 >-. < f g h d >-. < e g c >_.
  \ottava #0 r r4^\markup { "Fine." } \bar ":..:"
  \key es \major
  \mark \markup \fontsize #-1.5 { \bold "C moll." \italic "(Ut mineur)" }
  es-3-\markup { \dynamic p \italic dol. } ( c
  g'4.-> f8 es8-. ) [ es-. c-1-. c-2-. ]  < h-1 d-3 >2
  as'8-5-. [ as-3-. as-. as-. ]
  g4.-4 ( f16 es )
  d8-1-. d-3 ( f h, ) c4 r \bar ":..:"
  \set Staff.beatStructure = #'(4 )
  d8-2 ( g es-3 c-1 d4-3 g, )
  d'8 ( g es c d2 )
  h'8-4-. \f h-. h-. h-. c4.-5-\sf-\> ( g16-3 es-2\!
  d8-1 \p as'-5 g-4 h, c4 ) r
}

LHHi = \relative c {
  \clef bass
  \key c \major
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 )  %% abhängig vom Takt
  < c g' >4 r r2 < h g' >8-. q-. < c g' > q
  g16 g' d h g8 r < h g' >4 r r2
  \stemDown
  c8-.[ g'-. g,-. g'-. ]
  \stemNeutral
  c,16 c' g e c8 r
  < c g' >4 r r2 < cis a' >8-. q-. q-. q-.
  d16-4 f a f d8 r < g, h f' >4 r r2
  \stemDown
  c8-. [ e-. g-. g,-. ]
  \stemNeutral
  c,16 c' g e c8 r
  <<
    {
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \voiceOne
      \key es \major
      c'16 g' es g c, g' es g
      h, g' d g h, g' d g
      c, g' es g es c' g c
      g4 g f f es es f g s2
      g4 g g g g g g g f f es es f g
    } \\ {
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Fingering.direction = #UP  %% für Einzelnoten!
      c,4 c h h c es
      g16 d' h d g, d' h d
      f, d' h d f,^\< d' h d
      es,^\> c' g c\! es, c' g c
      f, d' as d g, f' d f
      c-4^( es g es c8 ) d,8\rest
      g16 d' h d g, es' c es
      g, d' h d g, d' h d
      g, d' h d g, es' c es
      g, d' h d g, d' h d
      f, d' as d f, d' as d
      es, c' g c es, c' g c
      f, d' as d g, f' d f
      c^( es g es c8 )
      \override TextScript.self-alignment-X = #RIGHT
      \override TextScript.extra-offset = #'( 3 . 0 )
      d,8\rest_\markup "D.C. sino al fine."
    }
  >>
}

RHIi= \relative c' {
  \time 2/4
  \key b \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegro viavce."
  \once \override Slur.positions = #'(2 . -2)
  \grace { f32-1 ( b-2 } d8-4-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { b32-1 ( d-2 } f8-5-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { d32-1 ( f-2 } b8-5-. ) r
  \grace { f32-1 ( b-2 } d8-5-. ) r
  \slashedGrace f,32 d'8-5 ( c-4-. )
  \slashedGrace f,32\noBeam c'8-5 ( b-4-. )
  \grace { b32 c } b8-5 ( a-2-. ) g-1-. f-2-.
  \once \override Slur.positions = #'(2 . -2)
  \grace { f,32-1 ( b-2 } d8-4-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { b32-1 ( d-2 } f8-5-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { d32-1 ( f-2 } b8-5-. ) r
  \grace { f32-1 ( b-2 } d8-5-. ) r
  \acciaccatura g,8 c-3-. es-5-.
  \acciaccatura f,8\noBeam a-2-. c-4-. b r8 r4
  \bar ":..:"
  \set Staff.beatStructure = #'(2 2 )
  a16-3 \p ( b a g a8-. ) f-1-.
  b16-2 ( c b a b8-2-. ) d-1-.
  \ottava #1
  f16-3 ( g f e f8-. ) c-1-.
  es!-3 ( d ) c-1-. b-2-.
  e16-3 ( f e d e8-._\markup \italic "cresc." ) c-.
  f16-3 ( g f es f8-1-. ) c'-3-.
  c-5 ( b ) g-. e-.
  f-2  \ottava #0 f,-5 [ ( es!-4 c-2 ) ]
  \once \override Slur.positions = #'(2 . -2)
  \grace { f,32-1 ( b-2 } d8-4-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { b32-1 ( d-2 } f8-5-. ) r
  \once \override Slur.positions = #'(2 . 0)
  \grace { d32-1 ( f-2 } b8-5-. ) r
  \grace { f32-1 ( b-2 } d8-5-. ) r
  \slashedGrace f,32 d'8-5 ( c-4-. )
  \slashedGrace f,32\noBeam c'8-5 ( b-4-. )
  \grace { b32 c } b8-5 ( a-2-. ) g-1-. f-2-.
  \ottava #1
  \once \override Slur.positions = #'(2 . 0)
  \grace { b32-1 ( d-2 } f8-5-. ) r
  \acciaccatura f-1 b-4-. r
  \acciaccatura es,-3 g-5-. r
  \acciaccatura c,-1 es-3-. r
  \ottava #0
  \acciaccatura b-2 d-4-. f-5-.
  \acciaccatura a, es'-4-. c-1-.
  b-2 r r4^\markup "Fine."
  %\offsetPositions #'(1 . 0)
  \bar ":..:"
  \key es \major
  g,16-1_\markup { \dynamic p \italic "dol." } ( b-3 es-4 b-2 g'4-5
  f,16 b es b g'4 )
  f,16 ( b d-4 f-1 b d f b,-4
  es4-5 b8-2-. ) r
  g,16 ( b es b g'4
  f,16 b es b g'4 )
  a,16 ( c es-3 f-1 a c es-4 a,
  b8-. ) b-. b-.\noBeam r
  \bar ":..:"
  b16-4 \p ( as! f d b-4 as f d b_2 d_1 f as b-4 d-1 f-3 d-1 )

  es-2 ( f es d es8-. ) g-4-.
  f4-1 ( b8-4-. ) r
  b16 \f ( as f d b as f d-1
  f as b-4 d-1 f as b-4 d-1
  f-4 es d es g-5 es b f
  f2-2 )
  g,16 \p ( b es b g'4 g,16 b es b g'4 )
  f,16 ( b d-4 f-1 b d f b,-4
  es4-5 b8-2-. ) r
  c,16_\markup \italic "cresc." ( es as es c'4
  b,16-1 es-2 g-4 es-2 b'4-5 )
  d,,16 \f ( f as b-4 d-1 f as d,
  es8-. ) es-. es-. r
  \bar ":..:" \pageBreak
}

LHIi = \relative c' {
  \clef bass
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \key b \major
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 )  %% abhängig vom Takt

  \grace { s32 s32 }
  b8-._\markup { \italic "stacc." } < d f >-. b-. q-.
  b-. q-. b-. q-.
  a-. < es' f >-. b-. < d f >-.

  <<
    {
      \voiceOne
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #UP
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      f,8 < c' es > q q
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
      f,2
    }
  >>
  b8-. < d f >-. b-. q-.
  b8-. < d f >-. b-. q-.
  es,-. < g c >-. f-. < c' es >-.
  < b-4 d-2 >-. < d-2 f-1 >-. < b d >-.\noBeam r
  <<
    {
      \voiceOne
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #UP
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      f8 < c' es > q q
      f, < b d > q q
      f < a c > q q
      \clef treble
      b < d f > q q
      c < g' b > q q
      c, < f a > q q
      c < es g > c < g' b >
      < f a > b8\rest b4\rest

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
      f,2 f f
      b c c c4 c4
      %d4\rest_\markup "D.C. sino al fine."
    }
  >>
  \clef bass
  b8-. < d f >-. b-. q-.
  b8-. < d f >-. b-. q-.
  es,-. < g c >-. e q
  f-. < a c >-. es!-. q
  d-. < f b >-. d-. q-.
  es-. < g b >-. es-. < g c >-.
  f-. < b d >-. f-. < a c es >-.
  < b-4 d-2 > < d-2 f-1 > < b d >\noBeam r
  \key es \major
  <<
    {
      \voiceOne
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #UP
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      es,2 es b es es es f
      s

      b, b s b b b b s es es b es as^4 g^5
      b,
    } \\ {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #UP %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #DOWN
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
      es8-4 b'-1 g-2 b-1
      es,8 b' g b
      b, as' f as
      es b' g b
      es, b' g b
      es, b' g b
      f es' c es
      < b d >4. d,8\rest
      b8 as'! f as
      b, as' f as
      g-2^( b-1 g-2 es-3 )
      b f' d f
      b, f' d f
      b, f' d f
      b, g' es g
      < b,^5 d^3 > b'-1 as-2 f-3
      es b' g b
      es, b' g b
      b, as' f as
      es b' g b
      as es' c es
      g, es' b es
      b, as' f as
      \override TextScript.self-alignment-X = #RIGHT
      \override TextScript.extra-offset = #'( 3 . 0 )
      < es g >4. d8\rest_\markup "D.C. sino al fine."
    }
  >>
}

RHJi= \relative c' {
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
  \mark \markup "Allegro viavce."
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
  \mark \markup \fontsize #-1.5 { \bold "E Dur." \italic "(Mi majeur.)" }
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

LHJi = \relative c {
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
