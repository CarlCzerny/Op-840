\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
\paper {

  left-margin = 10
  %annotate-spacing = ##t
}
exercise ="11"
#(set-global-staff-size 20)

\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke" %"50 Melodische Übungsstücke"
  mutopiatitle        =       \markup { "50 Melodische Übungsstücke, No." \exercise }

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "840, No. 11"

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
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \partial 4
  \mark \markup "Molto Allegro animato."
   a8.-1 \f d8-3 r a r f' r d r
   e2-4 ( a, )
   e8-3 r a, r g' r e r
   f2-3 ( d-1 )
   h'8-4 r h r h r h r
a4. ( f8 d ) r d4
cis4 cis d < d f >
< cis e >2.
\bar ":..:"
a8.-1 \p ( c16-2
e16-4 a, cis-2 a e' a, cis a e' a, cis a e' a, cis a
f'-5 a, d-3 a f' a, d a f' a, d a f' a, d a
g' a, e' a, g' a, e' a, f' a, d a f' a, d a
< cis-2 e-4 >2 r
a'8-2 \f r a r d r d r
h2-3 g
f8-2 r a e r a r
d,4 r
 r^\markup "Fine."
  \bar ":..:"
  \key d \major
  \mark \markup { \bold "D Dur." \italic "(Re" \italic " majneur.)" }
  a4-1_\markup { \dynamic p \italic "dol." } (
fis'4.-4 e8 d ) r a4 (
fis'4. e8 d ) r a4
a'-5 ( e g8-4 fis e d
< cis-2 e-4 >2. )
e4-1
e'-5_> ( h8-2 ) r e4_> ( h8 ) r
d8-4 ( cis h a gis-3 fis gis a-5
cis,4-2 ) cis ( d8 cis d h
a2 ) r8
a4 \p (
< e'-2 g!-4 > q < d fis > q
<<
  { fis-5 e-4 d-3 ) r8 a
    a4-5 g-4 g-4 fis-3 e2-5
  }
  \\ {
c2 d4 s4 e2 d c
  }
>>
r4 a (
f'4. e8 d )

   R4. \bar ":..:"
}

LH = \relative c' {
  \clef bass
  \key f \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(1 1 1 1 )  %% abhängig vom Takt
\partial 4
r4
d16 a' f a d, a' f a c, a' f a d, a' f a
cis, a' g a cis, a' g a cis, a' g a cis, a' g a
cis, a' e a cis, a' e a cis, a' e a cis, a' e a
d, a' f a d, a, f a a, a' f a d, a' f a
g d' b d g, d' b d g, d' b d g, d' b d
f, d' a d f, d' a d f, d' a d f, d' a d
e a g a e a g a d, a' f a d, a' f a
a,8 ( cis e a a,4 )
r a' a g-2 g-1
f2 d cis4 cis d d
a'8 ( a, cis e a-1 b-2 a-3 g-4 )
f16-5 d' a d f, d' a d f, d' a d f, d' a d
g, d' b d g, d' b d g, d' b d g, d' b d
a f' d f a, f' d f a, f' cis, g' a, g' c, g'
< d-3 f-2 >8\noBeam d-1 ( a-2 f-4 ) d r
  \clef treble

  g'8-3-.\noBeam

  g4. ( d8-. ) r r
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
      \set Staff.beatStructure = #'(2 2)  %% abhängig vom Takt
\key d \major
d8\rest
fis a g a fis a fis a
fis a g a fis a fis a
\stemDown
a, a' g a d, a' fis a
a, ( cis e f-q cis-2 e-1 cis-1 a-4 )
gis8 e' d e fis, e' d e
a, e' cis e d, a' fis a
e, cis' a cis e, d' gis, d
a cis e cis a4 d4\rest
cis8-3 ( a-5 cis a d a d a
\clef treble \stemUp
g' a, g' a, fis'-1 a,-5 fis' a,
cis-4 a' cis, a' d, a' d, a'
a, ( a' e cis-3
\clef bass \stemDown
c-1 e fis e-4 )
\stemUp
d a' fis a d, a' fis a
g, d' h d g, d' h d
a, fis' d fis a, g' cis, g'
d fis a fis d4

    } \\ \relative c' {
      \voiceTwo
      \set fingeringOrientations = #'(left)   %% Akkorde
      \override Fingering.direction = #DOWN %% Einzelnoten
      \override Fingering.padding = #0.2
      \override Fingering.staff-padding = #'()
      \override Fingering.avoid-slur = #'inside
      \override Slur.direction = #DOWN
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Staff.beatStructure = #'(3 )  %% abhängig vom Takt
d2 d2 d d cis d
\stemUp
cis d s1 gis2 gis
a d, e e a s4 s4
s1 s1 s1 s1
d2 d g, g a a d d4

      < g h >4 d8\rest
    }
  >>
  \key d \major
 g-1_\markup "D.C. sino al fine." ( es-5 c-5 ) r
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
        \line \large { C Dur }
        \italic \line { Ut majeur. }
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
        \RH
      >>
    }
    \new Staff="Bass" {
      \LH
    }
  >>
  \layout {
    ragged-last-bottom = ##t
    ragged-last = ##t
    ragged-right = ##f
    ragged-bottom = ##t
    left-margin = #10
    line-width = #190
  }
  %\midi { }
}
