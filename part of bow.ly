\version "2.24.0" % Ensure compatibility

\header {
  title = "Bowing Comments Example"
  composer = "Example Script"
}

\relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  % First note with bow comment 1/2
  c4^\markup { \italic "(1/2)" }
  % Second note with bow comment 2/2
  d4^\markup { \italic "(2/2)" }
  % Third note with bow comment 1/3
  e4^\markup { \italic "(1/3)" }
  % Fourth note with bow comment 2/3
  f4^\markup { \italic "(2/3)" }

  % Repeat with slurs to indicate bowing visually
  \bar "|."
}
