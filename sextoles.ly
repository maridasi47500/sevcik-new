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

  a16 b c d e f 
    \break
\break
  


}

\score {
   
     \new \markup { \line {\column{"find the  sextoles and how they should be executed with the accentuation of the accompaniment"
                    } \column {"hey"}   }
    } 
    \new Staff \with {
    instrumentName = "Violon"
    midiInstrument = "violin"
  } \violin 
  \layout { }
  \midi {
    \tempo 4=100
  }
}
