class Piece < ApplicationRecord
has_many :passages
after_create :hellothere
after_update :hellothere
def hellothere
@myscore="

\\version \"2.24.3\"

\\header {
  title = \"#{self.name}\"
}

global = {
  \\key #{key_signature.sub(" "," \\")}
  \\numericTimeSignature
  \\time #{time_signature}
}

violin = \\relative c'' {
  \\global
  % En avant la musique.
  a b c d e f g 
}

\\score {
  \\new Staff \with {
    instrumentName = \"Violon\"
    midiInstrument = \"violin\"
  } \\violin
  \\layout { }
  \\midi {
    \\tempo 4=100
  }
}


"
@score="

<lilypond fragment staffsize=26>
  \\key #{key_signature.sub(" "," \\")}
  \\numericTimeSignature
  \\time #{time_signature}
  c'4 d' e' f' g'2 g'
</lilypond>
"

p @score

wow="./public/uploads/"
hi=self.name.parameterize
p wow+hi
File.write(wow+"hello"+hi+".ly", @myscore)
File.write(wow+"hey"+hi+".html", @score)
@hey=`(cd #{wow} && lilypond-book hey#{hi}.html -f html --output #{hi})`
@hi=`(cd #{wow} && ly highlight hello#{hi}.ly > hello#{hi}.html)`

end

end
