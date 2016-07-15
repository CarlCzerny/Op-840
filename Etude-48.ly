\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
\paper {
  left-margin = #10
}

exercise ="48"

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
myPatternI = {
  c16 c-. [ c c-. c c-. c c-. ]
}
myPatternII = {
  c16 c [ c c c c c c ]
}
nyPattern = { c16 c [ c c ] }

myPatternIII = {
  c16 ( c c c c8-. ) c
}
uPatternI = { c8-. c-. c-. c-. }

RH= \relative c' {
  \time 4/4
  \key f \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 2 2)  %% abhängig vom Takt
  \set fingeringOrientations = #'(up)     %% für Akkorde!
  \override Fingering.direction = #DOWN      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \mark \markup "Allegro vivace."
  \changePitch \myPatternI {
    r_\markup { \dynamic f \italic "stacc." } d-1 r f-3 r e-2 r g-4
    r f-3 r a-5 r a,-1 r cis-2
    r d r f r e r g
  }
  \changePitch \myPatternII {
    r f r a r a, r cis
    r d-1 r f-2 r a-3 r d-5
  }
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \changePitch \myPatternII {
    r gis,-1 r f'-5 r e-4 r d-3
  }
  \changePitch \myPatternI {
    r cis-2 r a-1 r cis-2 r e-3
  }
  r16 a-3\> ( gis-2 a gis a gis a )
  g!-1 \p ( a b!-3 a g-1 f-3 e f g-3 f e d-1 cis-4 b a g )
  \changePitch \myPatternIII {
    f-2 a-1 d f a r
  }
  \override Slur.direction = #UP
  \override Slur.positions = #'(1 . -1)
  \override Fingering.direction = #DOWN
  \changePitch \myPatternIII {
    e,-2-\markup { \italic "cresc." } g-1 b e g r
    d,-2 f-1 a d f r
    cis,-2 e-1 a cis e r8
  }
  d16 a f' a, d a f' a, d8 r8 r4
  \bar ":..:"
  \stemUp
  % \override Stem.length = #21
  \override Beam.positions = #'(6 . 6)
  % r16 < c-2 e-4 > [ \p r q r q r q ] r < d-1 f-3 > r q r q r q
  \changePitch \myPatternII {
    r \p < c-2 e-4 > r q r q r q r < d-1 f-3 > r q r q r q
  }
  \revert Beam.positions
  %\override Beam.positions = #'(6 . 6)
  \override Beam.skip-quanting = ##t
  \override Beam.beamed-stem-shorten = #'(0 0 0)
  \override Stem.no-stem-extend = ##t
  %\revert Beam.positions
  \changePitch \nyPattern {
    r < e g-4 > r q r < d f-3 > r q r < cis e-4 > r q r q r q
  }
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  %\override Beam.positions = #'(8 . 8)
  \revert Beam.positions
  \override Beam.positions = #'(-3 . -3)
  \stemNeutral
  \changePitch \nyPattern {
    r-\markup { \italic "cresc." }
    < cis-1 e-2
    a-\tweak extra-offset #'(-1.5 . 0)-5 >
    r q r q r q
  }
  \override Beam.positions = #'(-2.5 . -2.5)

  \changePitch \nyPattern {
    r < d-1 f-3 a-5 > r q r q r q
    r < e g a > r q r < d f a > r q
  }
  \revert Beam.positions
  \override Fingering.direction = #UP
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 2 2)  %% abhängig vom Takt
  r16
  < cis-1 e-2 a-\tweak extra-offset #'(-1.5 . 0)-5 >\> ( gis'-4 a-5 g-4 e g e )\!
  \changePitch \myPatternIII {
    a-5 \p gis a f d r
    d'-5 cis d a f r
  }
  es16-2-\markup { \italic "cresc." } g-1 b es g8 r
  \ottava #1
  g,16-1 b-2 es-4 g-1 b8-3 r
  a16-5 \f g f e! d-1 c!-4 b! a \ottava #0
  g-1 f-3 e d cis-2 d e cis
  d-3 a-1 d-2 f-4 a f a f d8 r
  r4^\markup "Fine." \bar ":..:"
  \key d \major
  \mark \markup { \bold "D Dur." \italic "(Ré" \italic " majeur.)" }
  fis8-5-._\markup { \dynamic p \italic "dol." } r fis-. r fis-. r h,16-4 ( a-3 gis-2 a-1
  fis'8 ) r fis r fis r h,16-4 ( a gis a-1
  d8.-2 fis16-4 a8.-1 d16-2 ) \ottava #1 fis4-3 ( g16-4 fis e d
  cis4.-2 e8 g ) \ottava #0 r r4
  g,8-5-. r g-. r g-. r
  \once \override Slur.positions = #'(1 . 0)
  cis,16-2 ( a-1 e'-3 cis-2
  g'8-5-. ) r g-. r g-. r cis16-2\< ( a e' cis
  a'8-5\> g16 fis\! e d-1 cis-4 h a g fis-3 e d-1 cis-3 h c
  d8-. ) r < a fis' >-. r < fis d' >-. r r4
  \bar ":..:"
  fis'8-3-. \p r fis-. r fis-. r g16-4 ( fis e d-1
  cis4.-3 ais8_2 fis4_1 ) r
  fis'8-3-.-\markup { \italic "cresc." }  r fis-. r fis ( eis16 fis
  g-4 fis e d )
  cis2-2 cis4-3 (
  \override Fingering.direction = #DOWN
  h16-2 a-1 gis-2 a-1
  \override Fingering.direction = #UP
  fis'8-. ) r fis-. r fis-. r e16-4 ( d-3 cis-2 d-1
  d'8-. ) \sf r d-. r d4.-> (  gis,8
  cis-3 ) a,16-1 ( h cis d-1 e fis g!-4 fis e fis g a h cis
  d8-. ) r < fis,, a d >-. r q-. r r4
  \bar ":|."
}

LH = \relative c {
  \clef bass
  \key f \major
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.2
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(4 4 )  %% abhängig vom Takt
  \changePitch \uPatternI {
    d-5 f-3 e-3 g-2 g-3 a-1 a,-5 cis-3
    d-1 f-3 e-4 g-2
  }
  f8 a a, cis
  d-1 f-3 a-2 d-1 gis,-5 f'-1 e-2 d-1
  \changePitch \uPatternI {
    cis-3 a-5 cis-3 e-2
  }
  f-1-. r r4
  <<
    {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      cis,8 < e a > q q cis q q q
      d < f a > q q g, < b e > q q
      a < d f > q q a < e' g > q q
    } \\ \relative c' {
      \voiceTwo
      #(ly:expect-warning "Oktavenüberprüfung")
      cis=2 cis d g, a a
      < d f >8 a' < d, f > a' < d, f > d8\rest d4\rest
    }
  >>
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(2 2)  %% abhängig vom Takt
  \override Fingering.direction = #DOWN  %% für Einzelnoten!
  \change Staff = "Discant"
  \override Script.direction = #DOWN  %% für Arikulationszeichen
  \override Script.self-alignment-X = #CENTER
  \stemDown
  \override Beam.positions = #'(-4 . -5)
  a'8-1_. b-2-.  a-1-. g-2-.
  \override Beam.positions = #'(-5 . -6)
  f-3-. a-1-. f-2-. d-3-.
  \override Beam.positions = #'(-7 . -5.5)
  cis-3 a-5 d-3 f-2
  \override Beam.positions = #'(-5 . -6)
  a-1 e-2 cis-3 e-2
  \change Staff = "Bass"
  \override Beam.positions = #'(-3 . -2)
  a,-1 e-4 a g f-3 a-1 f-2 d-3
  \stemNeutral
  \revert Beam.positions
  \once \override Beam.positions = #'(3 . 4.5)
  cis-3 a-5 d-3 f a  r8 r4
  <<
    {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set Staff.beatStructure = #'(4 4)
      f,8 < a d > q q f q q q
      g < b es > q q g q q q
      a < d f > q q a < e' g > q q s1
      \key d \major
      \override Beam.positions = #'(6 . 7)
      \repeat unfold 3 { fis8 a d a fis a d a }
      \repeat unfold 3 { g a cis a g a cis a }
      \revert Beam.positions
      a, cis e g a, cis e g s1
      s s s s2
      \mergeDifferentlyHeadedOff
      g!8 cis a! cis
      \repeat unfold 2 { fis,8 a d a }
      d, e gis e d e gis e
      a, fis' d fis a, g'! e g
      s d_( a fis d )
      d'8\rest
      \override TextScript.self-alignment-X = #RIGHT
      \override TextScript.extra-offset = #'( 3 . 0 )
      d4\rest_\markup "D.C. sino al fine."
    } \\ {
      \voiceTwo
      \set fingeringOrientations = #'(left) %% für Akkorde!
      #(ly:expect-warning "Oktavenüberprüfung")
      f=,2 f g g a a
      < d f >8 a q a q d8\rest d4\rest
      \override NoteColumn.force-hshift = #0.7
      d2 d d d d d
      e e e e e e
      \revert NoteColumn.force-hshift
      a, a
      < d fis >8 a' d a d, d8\rest d4\rest
      \override Slur.direction = #UP
      < h'-2 d-1 >8 ( fis q fis q fis q fis
      < ais-3 e'-\tweak extra-offset #'(-1.5 . 0)-1 > fis q fis q fis q fis
      )
      < h-2 d-1 >8 ( fis q fis q fis q fis )
      < ais cis > fis q fis
      < e g >2
      \override NoteColumn.force-hshift = #0.7
      d d h h
      \revert NoteColumn.force-hshift
      a a
      < d fis >8
    }
  >>
}

Struktur= {
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \pageBreak
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
}
EtudeXXXXVIII=
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line {
          \bold \huge { "№" }
          \number { \exercise "." }
        }
        \line \large { D Moll }
        \italic \line { Ré mineur. }
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
  %\midi { }
}
#'()
\EtudeXXXXVIII
