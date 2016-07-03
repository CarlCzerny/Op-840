\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
exercise ="15"
%% wenn erforderlich linken Abstand ändern
\paper {
  %% hier für den Fall, dass Änderungen erforderlich sind
  %%l eft-margin = #15
  %% top-margin = #20
  %% system-system-spacing.basic-distance = #8
  %min-systems-per-page = #6

}
\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "" %"50 Melodische Übungsstücke"
  mutopiatitle        =       \markup { "50 Melodische Übungsstücke, No." \exercise }

  opus                =       "Op. 840"
  piece               =       \markup { "Op:" \number \tiny 840 "Etüde" \number \tiny 8 }
  mutopiaopus         =       "840, No. 15"

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
% footer = "Mutopia-2015/11/06-2060"
% copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
% tagline = ##f

myPattern = {
  \tuplet 3/2 { c16 ( c c c c c } \repeat unfold 2 \tuplet 3/2 { c c c c c c }
  c8-. ) c-.
}

RH= \relative c''' {
  \time 2/4
  \key d \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = #'(2 2 2 2 )  %% abhängig vom Takt
  \set fingeringOrientations = #'(left)     %% für Akkorde!
  \override Fingering.direction = #UP      %% für Einzelnoten!
  \override Fingering.padding = #0.8
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = #'inside
  \override Slur.direction = #UP
  \mark \markup "Allegretto giocoso"

  %\once \override Slur.positions = #'(2.8 . 0.6)

  a16*2/3-4\p ( h a fis-2 d fis a h a fis d fis
  a h a fis d fis
  a8-. ) fis'-5-.
  \ottava #1
  e16*2/3-2 ( fis e a8-.\noBeam ) d,16*2/3-1 ( e d a'8-.\noBeam )
  e16*2/3-2 fis g fis e d
  % c'''-\markup { \dynamic p \italic dol. }
  \ottava #0
  cis-4 h a g-1 fis-2 e-1
  a-4-\markup { \italic "cresc." } ( h a fis d fis a h a fis d fis
  a h a fis d fis a8-4-. ) d-5-.
  gis,16*2/3-3\f fis e fis gis a-1
  \ottava #1 h cis d-1 e fis gis
  a-5 e-3 cis-2
  \ottava #0
  a-1 e-3 cis-2 a8_1 r \bar ":..:"
  % \autoBeamOff f,,8_\markup { \italic \small "cresc." }  f8 f8 f8 \autoBeamOn
  % f f\noBeam f f
  \override Fingering.direction = #DOWN     %% für Einzelnoten!

  a,16*2/3-1 ais-2 h-1 his-2 cis-3 d-1 dis-2 e-1 eis-2 fis-3 g-1 gis-2
  \override Fingering.direction = #UP      %% für Einzelnoten!
  a-1 ais h his cis d dis e eis fis g-1 gis-2
  \ottava #1
  a-3 h a gis-2 a-1 h cis-3 d cis h cis-3 d-1
  e-3 fis e dis-2 e-1 fis g!-3 e fis g e fis
  g-3\f fis a-4 g fis e g fis a g fis e
  gis-3 e g-4 fis e d fis e g fis e d
  e-2 a-5 g-4 fis-3 f-2 e-1 dis-2-\markup { \italic "dim." } d-1 cis-2 c-1 h-3 b-2
  \ottava #0
  a-1 gis-2 g-1 fis-2 f-1 e-3 dis-2 e-1 f-2 fis-3 g-1 gis-3
  a-4 ( h a fis d fis a h a fis d fis
  a h a fis d fis a8-4-. ) fis'-3-.
  \ottava #1
  e16*2/3-2 ( fis e a8-.\noBeam )
  d,16*2/3 ( e d a'8-.\noBeam )
  e16*2/3-2 fis g fis e d
  \ottava #0
  cis-4 h a g-1 fis-2 e-1
  a-4 ( h a fis d fis a8-4-. ) d-5-.
  d16*2/3-4 ( e d h g h d8-4-. ) g-5-.
  fis16*2/3-3 e d cis-3 h a cis-4 h a g-1 fis-3 e
  d fis a d a fis d8 r^\markup "Fine."

  \mark \markup { \bold "D Moll." \italic "(Ré" \super \flat \italic " mineur)" }
  \bar ":..:" \break
  \key f \major
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(2 )  %% abhängig vom Takt
  < a f' >8-. q-. q-. q-.
  < g e' >-. q-. q-. q-.
  < f d' >-. q-. < g e' >-. q-.
  < e-1 a-2 >4^> ( cis'16-4 a-1 e'-3 cis-2 )
  < a e' g >8-. q-. q-. q-.
  < a d f >-. q-. q-. q-.
  e'-. b' ( a-. ) cis,-.
  d-. f-. d-.\noBeam r
  \bar ":..:"
  < a cis e >-. q-. q-. q-.
  < a d f >-. q-. q-. q-.
  < a e' g >8-. q-. < a d f >-. q-.
  < cis e >2^>
  < d a' >8-. q-. q-. q-.
  < d b' >4^> e16-2 ( f g e
  a8-.[ ) a-.] cis,-. cis-.
  d4. r8 \bar ":..:"
}

LH = \relative c' {
  \clef bass
  \key d \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
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
  \clef treble

  %\once \override Slur.positions = #'(-1 . -4)
  %q ( < d a' >4 ) r8
  %% falls die linke Hand einstimmig beginnt und mehrstimmig wird
  <<
    {
      \voiceOne
      %\mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      fis8 ( a fis a )
      fis8 ( a fis a )
      g a fis a
      a, < cis e > < cis e >4
      fis8 a fis a
      fis a fis a
      h d h d s2
    } \\ {
      \voiceTwo
      d,4 d d d cis d a2
      d4 d d d e e < a cis>8 h8\rest h4\rest
      % d4\rest_\markup "D.C. sino al fine."
    }
  >>
  \clef bass
  < a,, e' g!>4 q
  < a d fis > q
  < a cis e >2 r2
  < cis e a >4 q
  < d fis a > q
  < a cis > r4 r2
  <<
    {
      \voiceOne
      \mergeDifferentlyDottedOn
      fis'8 a fis a
      fis a fis a
      g a fis a
      a, < cis e > < cis e>4
      fis8 a fis a
      d h d h
      \clef treble
      d fis cis g' fis4 h4\rest
    } \\ {
      \voiceTwo
      d,,4 d d d cis d a2
      d4 d g g
      a a d
    }
  >>
  \clef bass
  \key f \major
  < d f >8-. q-. q-. q-.
  < a cis >-. q-. q-. q-.
  < b d >-. q-. < g b >-. q-.
  < a cis >2_>
  cis8-. cis-. cis-. cis-.
  d-. d-. d-. d-.
  < g, b d e >4 \clef treble < a e' g >
  < d f >8-. < d a' >-. < d f >-.\noBeam r \clef bass
  \stemDown
  a,8 ( cis16 e a8 [ g ]
  f-3 a-1 f-2 d-3
  cis-4 a-5 d-3 f-2
  a-1 b-2 a-3 g-4 )
  < f a d >8 q < fis c'! d > q
  < g b d > [ q ]
  \clef treble \stemNeutral
  < g b d e > q
  < a d f > q < a e' g > [ q ]
  < d f >-._\markup "D.C. sino al fine." < f a >-. < d f >-.\noBeam r
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
        \line \large { D Dur }
        \italic \line { Ré majeur. }
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

        \LH
      >>
    }
  >>
  %% Falls erforderlich Zeilenlänge und Einzug ändern
  \layout {
    %indent = #15
    %ragged-last-bottom = ##f
    %ragged-last = ##f
    %ragged-bottom = ##f
    %line-width = #180
  }
  %\midi { }
}

