\version "2.24.3"

\header {
  title = "hey"
}

global = {
  \key c \major
  \numericTimeSignature
  \time 6/8
}

violin = \relative c'' {
  \global
  % En avant la musique.
  a8\ff b\decr c d\p\tenuto e\staccato (f\accent g) \fermata
  
}

\score {
  \new Staff \with {
    instrumentName = "Violon"
    midiInstrument = "violin"
  } \violin
  \layout { }
  \midi {
    \tempo 4=100
  }
}
