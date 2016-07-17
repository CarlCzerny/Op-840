\version "2.19.37"

\language "deutsch"

\include "Papier+Layout.ly"
\include "myScheme.ily"
\include "_inc.ily"
\header {
  composer  =  \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  title     = \markup \fontsize #1 { "50 Melodische Übungsstücke" }
  subtitle = \markup \fontsize #0.9 { "1. Heft" }
  opus      =  "Op. 840"
}
exercise ="1"
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number { \exercise "." } }
        \line \large { C Dur }
        \italic \line { Ut majeur. }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant" \RHAi
    \new Staff="Bass" \LHAi
  >>
  \layout { }
  \header {
    % piece = \markup { "Etüde" \number \exercise }
    opus=""
  }
}

exercise="2"
Tonart="F Dur"
TonartF="Fa majeur."
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number { \exercise "." } }
        \line \large { \Tonart }
        \italic \line { \TonartF }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant" \RHBi
    \new Staff="Bass" \LHBi
  >>
  \layout { }
  \header {
    % piece = \markup { "Etüde" \number \exercise }
    opus=""
  }
  %\midi { \tempo 2 = 72 }
}

exercise="3"
Tonart="C Moll"
TonartF="Ut mineur."
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number { \exercise "." } }
        \line \large { \Tonart }
        \italic \line { \TonartF }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant" \RHCi
    \new Staff="Bass" \LHCi
  >>
  \layout { }
  \header {
    % piece = \markup { "Etüde" \number \exercise }
    opus=""
  }
}

exercise="4"
Tonart="G Moll."
TonartF="Sol mineur."
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number { \exercise "." } }
        \line \large { \Tonart }
        \italic \line { \TonartF }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant" \RHDi
    \new Staff="Bass" \LHDi
  >>
  \layout { }
  \header {
    % piece = \markup { "Etüde" \number \exercise }
    opus=""
  }
}

exercise="5"
Tonart="C Dur"
TonartF="Ut majeur."
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number { \exercise "." } }
        \line \large { \Tonart }
        \italic \line { \TonartF }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant" \RHEi
    \new Staff="Bass" \LHEi
  >>
  \layout { }
  \header {
    % piece = \markup { "Etüde" \number \exercise }
    opus=""
  }
}

exercise="6"
Tonart="A moll."
TonartF="La mineur."
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number { \exercise "." } }
        \line \large { \Tonart }
        \italic \line { \TonartF }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant" \RHFi
    \new Staff="Bass" \LHFi
  >>
  \layout { }
  \header {
    % piece = \markup { "Etüde" \number \exercise }
    opus=""
  }
}

exercise="7"
Tonart="G Dur"
TonartF="Sol majeur."
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number { \exercise "." } }
        \line \large { \Tonart }
        \italic \line { \TonartF }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant" \RHGi
    \new Staff="Bass" \LHGi
  >>
  \layout { }
  \header {
    % piece = \markup { "Etüde" \number \exercise }
    opus=""
  }
}

exercise="8"
Tonart="C Dur"
TonartF="Ut majeur."
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line {
          \bold \huge { "№" }
          \number { \exercise "." }
        }
        \line \large { \Tonart }
        \italic \line { \TonartF }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant"
    \RHHi
    \new Staff="Bass"
    \LHHi
  >>
  \layout { }
  \header {
    %piece = \markup { "Etüde" \number \exercise }
    opus=""
  }
}

exercise="9"
Tonart= "B Dur"
TonartF= \markup { "Si" \flat "majeur." }
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line {
          \bold \huge { "№" }
          \number { \exercise "." }
        }
        \line \large { \Tonart }
        \italic \line { \TonartF }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant"
    \RHIi
    \new Staff="Bass"
    \LHIi
  >>
  \layout {
    ragged-last-bottom = ##t
    ragged-right = ##f
  }
  \header {
    %piece = \markup { "Etüde" \number \exercise }
    opus=""
  }
}

exercise="10"
Tonart="E Moll"
TonartF="Mi mineur."
\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line {
          \bold \huge { "№" }
          \number { \exercise "." }
        }
        \line \large { \Tonart }
        \italic \line { \TonartF }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant"
    \RHJi
    \new Staff="Bass"
    \LHJi
  >>
  \layout {
    ragged-last-bottom = ##t
    ragged-right = ##f
  }
}
