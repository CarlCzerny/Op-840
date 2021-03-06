\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"

%#(set-global-staff-size 18)
\header {
  mutopiatitle = "50 Melodische Übungsstücke"
  mutopiacomposer = "CzernyC"
  mutopiaopus = "840"
  mutopiainstrument = "Piano"
  source ="Mainz: Schott, n.d.[1855]. Plate 13253"
  style = "Romantic"
  license="Public Domain"
  maintainer="Manuela"
  maintainerEmail="pressephotografin--gmail.com"
  composer =\markup { \bold "Carl Czerny (1791-1857)"  }
  %opus = \markup { "Op:" \number \tiny 840 }
  piece =\markup {"Op:" \number \tiny 840 "Etüde" \number \tiny 2 }
  title = "50 Melodische Übungsstücke"
  %subtitle = "subtitle"
  %arranger = "arranger"
  %instrument = "Piano"
  metre = "metre"
  %poet = "poet"
  texidoc = "All header fields with special meanings."
  copyright = "public domain"
  enteredby = "Manuela"

}

RH= \relative c'' {
  %\accidentalStyle modern
  \time 6/8
  \key f \major \partial 8
  %\set Staff.explicitKeySignatureVisibility = #all-invisible
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \mark \markup  "Allegretto animato"
  \once \override Voice.Slur #'positions = #'(2.8 . 0.6)
  \once \override TextScript.extra-offset = #'( -16.5 . 3.5 )
  c8-.-1%-\markup { \small \bold o }
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
  f-5-. c-. a-. f-. r^\markup { "Fine." }
  \mark \markup { \bold "B Dur." \italic "(Si" \super \flat \italic " majeur)" }
  \bar ":..:"
  \key b \major
  f,8 < d'-4 f-5 >4.( < b-2 d-4 >8)-. q q
  < c-1~ es-3~ >4. < c es >8 es'16-5( d c b-4 a g f g a b-4
  \ottava #1 c-1 d es f-1 g a b-4 a-2 b-3 c d b f8) \ottava #0 r8 f,,_\f
  < d' f >4.( < b d >8)-. q-. q-.
  < b g' >4.->( e8-4-.) \ottava #1 c''-4-.\p c-.
  d16-5( c b a g-1 f-4 e d c-1 b-4 a g)
  f a c f c a f8 r8 \ottava #0
  \bar ":..:"
  g'16-5(\p f es! d c-1 b-4 a g f-1 e-3 d c-1 b-2 a)
  b-2( c b a b d-4 \autoBeamOff f8-5-.) \autoBeamOn b16-3(_\markup { \italic \small "cresc." } c d c
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
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
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
  < b d >8 q q q d,8\rest_\markup "D.C. sino al fine."
}

\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number 2. }
        \line \large { F Dur }
        \italic \line { Fa majeur. }
      }
    }
    shortInstrumentName = ""
  }
  <<

    \new Staff="Discant"
    \with
    {
      \consists "Bar_number_engraver"
      \override BarNumber.padding = #0
      \override BarNumber.self-alignment-X = #CENTER
      \override BarNumber.break-visibility = #end-of-line-invisible
      \override Slur.outside-staff-priority = #150
    }
    {
      <<
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \RH

      >>

    }
    \new Staff="Bass" {

      <<
        \new Voice = "first"
        \relative c'
        \LHI
        \new Voice= "second"
        \LHII
      >>
    }
  >>
  %\layout {  }
  %\midi { }
}

