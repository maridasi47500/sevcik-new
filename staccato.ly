\version "2.24.3"

\relative c'' {
  \time 4/4

  % Broad spiccato (often shown with staccato + tenuto, i.e. "portato")
  c4 -\tenuto -\staccato

  % Short, detached staccato
  d4 -\staccato

  % Springing spiccato (often shown with staccatissimo)
  e4 -\staccatissimo

  % To hear the difference, repeat them in sequence
  f4 -\tenuto -\staccato g4 -\staccato a4 -\staccatissimo
}
