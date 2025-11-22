\version "2.25.0"

\relative c'' {
  \time 4/4
  % Fingered tremolo: alternate between c'' and g'
  \repeat tremolo 2 { c8 g }
  
  % Another example: alternating between e'' and b'
  \repeat tremolo 2 { e8 b }
  
  % Combine with rests
  r4 \repeat tremolo 8 { d16 a }
}
