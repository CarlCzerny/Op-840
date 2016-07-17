\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
exercise ="19"
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

RH= \relative c''' {
  \time 6/8
  \key es \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 3 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto animato."
  \partial 8
  %\once \override Slur.positions = #'(2.8 . 0.6)
  b8-3 \f
  \grace { b32 c } b8-3 ( a b es4-5 g,8-1 )
  \grace { g32[ as!] } g8-3 ( fis g b4-5 es,8-2 )
  \grace { es32[ f] } es8-2 ( d-. ) es-. \grace { f32[ g] } f8-3 ( e-. ) f-.
  g4.-4_> ( es!8-2 ) r es-3 \p (
  d16-2 c b c d es-3 f-1 g as b c-1 d
  \ottava #1 es-1 f-1 g as b-4 a-3 c-5 b as g f-1 es-3
  d-2 f-4 es d c-1 b-4
  \ottava #0 as g f-1 es-3 d c
  b-2 d-1 f-2 b-4 f-2 d-1 b8-2 ) r
  \bar ":..:"
  %\once \override NoteColumn.force-hshift = #1.7
  r
  %\displaceHeads #'(0 1 -1)
 % \override NoteColumn.before-line-breaking = #(shift '(0 1 -1))
  < f-1 %\tweak color #red
  as!-2 b-5 > \f q q q q q
 % \revert NoteColumn.before-line-breaking
  < g b > q q q q q
  d'16-4 ( c b c-1 d es f-1 g as b-4 c-1 d-2
  es4-4\> b8-2 g4-1 es8-2 )
  \grace { es'32[ \p f] } c8-3 ( h c es4-5 c8-3 )
  b!8-2-.\noBeam_\markup { \italic "cresc." }
  \ottava #1 es'16-3 d f es d c-1 b-4 as g f
  c'-5 \f b as g f-1 es-3
  \ottava #0 d c b-4 as g f
  es-2 ( g-1 b-2 es-4 b g es8 ) r^\markup { "Fine." }
  \bar ":..:"
  \mark \markup \fontsize #-1.5 { \bold "Es Moll." \italic "(Mi" \flat \italic " mineur)" }
  \key ges \major
  <<
    \set fingeringOrientations = #'(left)
    {
      b,-1 ( \p < es-2 ges-4 >4 q8 q4 q8 <f-3>8 ges f es )
    } \\
    {
      \set fingeringOrientations = #'(left)
      s8 s2. <d-1>4. es8
    }
  >>
  r8 ges-2
  \override Fingering.padding = #2
  \set fingeringOrientations = #'(up)
  < es ges b-4 >4 q8 < es as c-5 >4 q8
  \override Fingering.padding = #0.4
  \set fingeringOrientations = #'(left)
  < d-1~ f-2~ >4. q8 r b'-2
  ces4-3 ( b8 ces4\< b8
  b4-2 es8-4 < a,-1 ges'-5 >4\> < b-2 f-5 >8
  < c-3 es-5 >4\! ) < ges c es >8 ( < f b des >4 < es a! c >8
  < des b' >4 ) r8 r4
  \set fingeringOrientations = #'(up)
  \override Fingering.avoid-slur = #'around
  b'8-1 ( < f'-3 as!-5 >4 ) q8 ( < es-2 ges-4 >4 ) q8 (
  < d~ f~ >4. ) q4 b8-4 (
  \set fingeringOrientations = #'(left)
  \override Fingering.padding = #0.8
  < f-1 as-3 >4 b8 < es-1 ges-2 >4 b8
  \override Fingering.avoid-slur = #'inside
  < d,-1~ f-2~ >4. ) q4 b'8-1 (
  b'4-4_\markup { \italic \small "cresc." } b8 b4 b8
  \override Fingering.padding = #0.4
  \set fingeringOrientations = #'(up)

  ces!4.-5 \f as-3\> )
  < b,-2 ges'!-5 >4 \p ( < as-1 f'-5 >8 < ges-2 es'-5 >4 < f-1 d'-5 >8 )
  < ges es' >4 r8 r4
  \bar ":..:"
}

LH = \relative c {
  \clef bass
  \key es \major
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \partial 8
  \set fingeringOrientations = #'(left) %% für Akkorde!
  \override Fingering.direction = #UP  %% für Einzelnoten!
  \override Fingering.padding = #0.4
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  %\override Slur.direction = #UP
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(3 3 )  %% abhängig vom Takt
  r8
  <<
    {
      \voiceOne
      es8 < g b > q es q q es q q es q q
      b < es g > q b < d as'> q
      es < g b > q es q q
      as b f' as, b f'
      g, b es es, g b
      f b d f, a es'

    } \\ {
      \voiceTwo
      es,4. es es es b b es es
      as as g es f f
    }
  >>
  < b d >8 q q q r
  b,-3
  d16-1 ( c b-3 c d-1 es-3 f g as-4 b c d-1
  es4-2 b8-4 g4-1 es8-2 )
  <<
    {
      \voiceOne
      b < f' as > q  b, q q
      es < g b > q es q q
      as < c es > q as q q
      g < b es > q \clef treble
      as < c f > q
      b < es g > q b < d as' > q
    } \\ {
      \voiceTwo
      b,4. b es es as as g as b b
    }
  >>
  < es g >8 q q q r \clef bass
  \key ges \major
  r < es,-3 b'-1 >4 ( q8 q4 q8
  < b as' >4. < es ges >8 ) r r
  es4-2 es8 as,4_5 as8
  b-4 d!-2 f-1 b-2 r r \clef treble
  < d!-4 f-2 as-1 >4 q8 q4 q8
  < es-3 ges-1 >4. ( < c-4 es-2 >4 < des! f >8
  < es-3 ges-2 >4 ) \clef bass es,8-2 ( f4 f,8 )
  b4_1 b,8\noBeam b r
  r
  <<
    {
      \voiceOne
      d' b' b es, b' b s2.
      d,8 b' b es, b' b s2.
      ges8 < b es > q g < des' es > q
      as < c es > q as q q
    } \\ {
      \voiceTwo
      d,4. es b8^( b' b b as f )
      \override Fingering.direction = #UP
      \override Fingering.padding = #0.4
      \override Fingering.staff-padding = #'()
      d4. es b8-5 d-3 f-2 b-1 b-3 as-4
      \override Fingering.staff-padding = #1
      ges4._5 g as as
    }
  >>
  b4 b,8 b4 b8 es4 b8 es,
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 3 . 0 )
  r_\markup "D.C. sino al fine."
}

Struktur= {
  s2.*3 % \break

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
        \line \large { Es Dur }
        \italic \line { Mi \super \flat majeur. }
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
