\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
exercise ="20"
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
  \tuplet 3/2 { c16 ( c c c c c } \repeat unfold 2 \tuplet 3/2 { c c c c c c }
  c8-. ) c-.
}

RH= \relative c'' {
  \time 2/4
  \key as \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto vivace."
  \partial 8
  c8-1 ( \p f-3-. ) c-. f-. as-5-.
  \slashedGrace  as8  g-4-. f-. e-. f-.
  g-4-. c-1-. g-3-. b-5-.
  \slashedGrace  b8-4 as-3 g-. f-. g-.
  as-3-.\< f-1-. as-2-. c-4-.
  des4-5->\> des16-5 ( c b as )\!
  g8-1-. g-2-. as-. f-1-.
  e-2-. g-. c,-. c(
  f-. ) c-._\markup { \italic \small "cresc." } f-. as-.
  \slashedGrace  as8 g-. f-. e-. f-.
  g-. c,-. g'-. b-.
  as-3-. g-. f-. g-.
  as-3-. \f f-1-. as-2-. c-3-.
  f4-5 es!16-3 ( d c-1 b-3 )
  as8-. c-. g-. c-.
  f, r r \bar ":..:" c-. \f
  < c-1 e-2 g-4 >-. q-. q-. q-.
  q-. q-. q-. q-.
  < c-1 f-3 as-5 >-. q-. q-. q-.
  < c e g > q q q
  < e-1 g-2 c-5 >-. q-. q-. q-.
  q-. q-. q-. q-.
  < f as c >-. q-. < f as h >-. q-.
  < e g c >-.\> c-. c-. c-.
  f-. \p c-. f-. as-.
  \slashedGrace as8 g-. f-. e-. f-.
  g-. c,-. g'-. b-.
  \slashedGrace b8 as-. g-. f-. g-.
  as-3 f'-5 f f
  f4-4 ( es16 d c-1 b-4 )
  as8-. c-. g-. c-.
  b16-4 ( as g as f [ g as b-4 ) ]
  c8-1-. as'-3-. g-. f-.
  es!-3-. des-. c-. b-4-.
  as-. c-. c,-. e-. f-. r r8^\markup { "Fine." }

  %\markup { \dynamic p \italic "dol." }
  \mark \markup \fontsize #-1.5 { \bold  "F Dur." \italic "(Fa majeur)" }
  \bar ":..:" \break
  \key f \major
  c8-1 \f
  a'4.-3 a8 ( b\> a g f-1 )
  f-4 \p ( e d c )
  c4. c8 \f
  b'4.-4 ( c16 b
  a8-3\> c a f-1 )
  e-3 \p ( g f d c ) r r
  \bar ":..:"
  \set Staff.beatStructure = #'(2 2 )
  c16-1 \p d
  e-3 f-1 g a \ottava #1 b c-1 d e f-1 g a b c8-5-. c-.
  c16-5 ( b a g b-4 a g f )
  g8-4 ( e c\noBeam_\markup { \italic "cresc." } ) d'16-5 c
  b-3 a g a b g c-5 b-4
  a b a g f-1 e-3 d c
  \ottava #0
  h-4 c h a g f e d
  c ( e g e c8-. ) c(
  a'4. ) \f a8 (
  \set Staff.beatStructure = #'(4 )
  b a g f )
  f ( e d c )
  c4. c8-1
  b'-2 ( c16 d c8[ b] )
  a ( f' ) c-. a-1-.
  g-2 ( c ) b-. g-. f r r \bar ":|."
}

LH = \relative c {
  \clef bass
  \key as \major
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 )  %% abhängig vom Takt
  \partial 8
  r8
  <<
    {
      \voiceOne
      f8 < as c > q q f q q q
      e < b' c > q q e, q q q
      f8 < as c > q q
      b, < f' g > q q
      b, < f' g > h, < f' as >
      c < e g > < e g >\noBeam
    } \\ {
      \voiceTwo
      f2 f e e f b,
      b4 h c4.
    }
  >>
  r8
  <<
    {
      \voiceOne
      f8 < as c > q q f q q q
      e < b' c > q q e, q q q
      f8 < as c > q q
      d, < f b > q q
      c < f as > c < e b' >

    } \\ {
      \voiceTwo
      f2 f e e f d c4 c
    }
  >>
  < f as >8-.[ < as c >-. < f as >-.] r
  c-5-. c-. e-. g-2-.
  c4-> c16-1 ( b as g-4
  f8-5-. ) c'-1-. as-2-. f-3-.
  c-. c'-. c,-. r
  c-. c-. es-. g-.
  c4-> c16-1 ( b as g-4
  f8-5-. ) f-3 ( as-2 f-3
  c ) r r4
  <<
    {
      \voiceOne
      f8 < as c > q q f q q q
      e < b' c > q q e, q q q
      f8 < as c > q q
      d, < f b > q q
      c < f as > c < e g >
      f8 < as c > q q
      as, < c f > q q b < des g > q q
      c < f as > c < g' b >
    } \\ {
      \voiceTwo
      f2 f e e f d c4 c
      f2 as, b c4 c4
    }
  >>
  < f as >8-. f-.[ f,-.]
  \key f \major
  r8
  \set Staff.beatStructure = #'(2 2 )
  f'16 c' a c f, c' a c
  f, c' a c f, c' a c
  g c b c g c b c g c b c g c b c
  e, c' g c e, c' g c
  f, c' a c f, c' a c
  g e' c e g, f' h, f'
  c g' e g c,8
  r8 \clef treble
  \set Staff.beatStructure = #'(4 )
  < g' b! > ( c, < g' b > c, < f a > c q c )
  < e g > c < f a > c < e g > c < e g > c
  \clef bass
  <<
    {
      \voiceOne
      e,2 f g
    } \\ {
      \voiceTwo
      e8 c' g c
      f, c' a c
      g f' h, f'
    }
  >>
  < c e >8 r r4
  \set Staff.beatStructure = #'(2 2 )
  f,16 c' a c f, c' a c
  f, c' a c f, c' a c
  g c b c g c b c g c b c g c b c
  e, c' g c e, c' g c
  f,16 c' a c f, c' a c
  c, b' e, b' c, b' e, b'
  f c' a c
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 3 . 0 )
  f,8_\markup "D.C. sino al fine."
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
        \line \large { F Moll }
        \italic \line { Fa mineur. }
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
  %% Falls erforderlich Zeilenlänge und Einzug ändern
  \layout {
  }
  \midi { }
}
