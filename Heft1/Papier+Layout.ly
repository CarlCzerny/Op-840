%% Include File für alle Etüden
%% um gleiches Layout sicherzustellen
FootLeft = #(string-append "" )
FootCenter = #(string-append "")
FootLeft = #(string-append "gesetzt mit LILYPOND " (lilypond-version) " am " (strftime "%d.%m.%Y %H:%M:%S" (localtime (current-time))))
#(set-global-staff-size 18)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% A function to modify the shape of slurs by offsetting the positions property
% from default control-point values. Setting either y1 or y2 to zero will leave
% that attachment-point unchanged. Syntax: \offsetPositions #'(y1 . y2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

offsetPositions =
#(define-music-function (offsets) (pair?)
   #{
     \once \override Slur.positions =
     #(lambda (grob)
        `(,(+ (car offsets) (cdar (ly:slur::calc-control-points grob))) .
           ,(+ (cdr offsets) (cdr (cadddr (ly:slur::calc-control-points grob))))))
   #})

\paper {
  #(set-paper-size "a4")
  oddFooterMarkup = \markup \fill-line {
    \abs-fontsize #7 { \FootLeft }
  }
  annotate-spacing = ##f
  %% system-system-spacing.extra-distance = #0
  left-margin = #10
  %system-system-spacing.basic-distance = #10
  %system-system-spacing = #((padding . 0) (basic-distance . 0.1))
  %top-system-spacing = #((padding . 0) (basic-distance . 0.1))
  %top-system-spacing.basic-distance = #10
  %top-system-spacing.padding = #20
  top-system-spacing.basic-distance = #10
  top-system-spacing.extra-distance = #20
  score-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  system-system-spacing.minimum-distance = #1
  last-bottom-spacing.basic-distance = #10
  last-bottom-spacing.extra-distance = #20
  %page-count = #2
  %top-margin = #20
  ragged-right = ##f
  %bottom-margin = #10
  %last-bottom-spacing.basic-distance = #10
  %score-markup-spacing.basic-distance = #10
  %score-markup-spacing.extra-distance = #10
  %score-markup-spacing
}

\layout {
  indent = #15
  ragged-last-bottom = ##t
  ragged-last = ##f
  ragged-bottom = ##f
  line-width = #190
  min-systems-per-page = #6
  \context {
    \Staff
    \omit ClefModifier
    explicitClefVisibility = #end-of-line-invisible
    explicitKeySignatureVisibility = #end-of-line-invisible
  }

  \context {
    \Score
    \override BarNumber.break-visibility = #end-of-line-invisible
    \override BarNumber.padding = #0
    \override BarNumber.self-alignment-X = #CENTER
    \override RehearsalMark.self-alignment-X = #LEFT
    \override KeyCancellation.break-visibility = #'#(#f #t #t)
    \override TextScript.self-alignment-X = #LEFT
  }
}
