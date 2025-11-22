\version "2.24.3"

\relative c'' {
  \clef treble
  \time 4/4

  % Note avec indication "M." (milieu)
  c4^\markup { "M." }

  % Note avec indication "Sp." (pointe)
  d4^\markup { "Sp." }

  % Note avec indication "Fr." (talon)
  e4^\markup { "Fr." }

  % Petite séquence pour les trois coups d’archet
  f4^\markup { "M." } g4^\markup { "Sp." } a4^\markup { "Fr." } b4
}
