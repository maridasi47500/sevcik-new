class Piece < ApplicationRecord
has_many :passages
after_create :hellothere
after_update :hellothere
def hellothere
@score="
\\version \"2.24.3\"

\\header {
  title = \"#{self.name}\"
}

global = {
  \\key #{self.key_signature.sub(" "," \\")}
  \\numericTimeSignature
  \\time #{time_signature}
}

violin = \\relative c'' {
  \\global
  % En avant la musique.
  a b c d e f g 
}

\\score {
  \\new Staff \\with {
    instrumentName = \"Violon\"
    midiInstrument = \"violin\"
  } \\violin
  \\layout { }
  \\midi {
    \\tempo 4=100
  }
}

"
p @score

wow="./public/uploads/"
hi=self.name.parameterize+".ly"
p wow+hi
File.write(wow+hi, @score)
@hey=`(cd #{wow} && lilypond #{hi})`

end

end
