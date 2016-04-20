FootLeft = #(string-append "" )
FootCenter = #(string-append "")
FootRight = #(string-append "gesetzt mit LILYPOND " (lilypond-version) " am " (strftime "%d.%m.%Y %H:%M:%S" (localtime (current-time))))

Papier = \paper {
  #(set-paper-size "a4")
  oddFooterMarkup = \markup \fill-line {
    \abs-fontsize #9 { \FootLeft }
    % \abs-fontsize #7.0 { \italic { \FootCenter } }
    \abs-fontsize #9 { \FootRight }
  }

  fonts = #(make-pango-font-tree
            "Palatino Linotype" ;Serifenschrift
            "Ebrima"   ;serifenlose Schrift, z.B. für Akkordbezeichnungen
            "Consolas" ;dicktengleiche Schrift
            (/ (* staff-height pt) 2.5))
  %annotate-spacing = ##t
  %top-system-spacing.basic-distance = #40
  %score-system-spacing.basic-distance = #20
  %system-system-spacing.basic-distance = #20
  %last-bottom-spacing.basic-distance = #10
  left-margin = #10
  top-margin = #5
  %markup-system-spacing #'padding = #5
}

\layout {
  indent = #10
  ragged-last-bottom = ##f
  ragged-last = ##f
  ragged-bottom = ##f
  %line-width = #190

  \context {
    \Staff
    \omit ClefModifier

  }

  \context {
    \Score
    %\override NonMusicalPaperColumn.line-break-permission = ##f
    %\override NonMusicalPaperColumn.page-break-permission = ##f

  }
}
