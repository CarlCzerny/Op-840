%% Include File für alle Etüden
%% um gleiches Layout sicherzustellen
FootLeft = #(string-append "" )
FootCenter = #(string-append "")
FootLeft = #(string-append "gesetzt mit LILYPOND " (lilypond-version) " am " (strftime "%d.%m.%Y %H:%M:%S" (localtime (current-time))))
#(set-global-staff-size 20)

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
  myStaffSize = #20
  oddFooterMarkup = \markup \fill-line {
    \abs-fontsize #7 { \FootLeft }
  }
  annotate-spacing = ##f
  left-margin = #15
  top-margin = #20
  ragged-right = ##f
  bottom-margin = #10
  last-bottom-spacing.basic-distance = #10
}

\layout {
  indent = #15
  ragged-last-bottom = ##t
  ragged-last = ##f
  ragged-bottom = ##f
  line-width = #180

  \context {
    \Staff
    \omit ClefModifier
    \override Slur.outside-staff-priority = #150
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
