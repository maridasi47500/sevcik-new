class Piece < ApplicationRecord
has_many :passages
after_create :hellothere
after_update :hellothere
def hellothere
self.passages.each {|h|p h.description.strip}
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

#{self.passages.map.with_index {|x,i|"#{x.title.parameterize.gsub("-","").tr("0-9", "")}#{("a".."zz").to_a[i]} = \\relative c'' {
  \\key #{x.different_signature.try(:mykey) ? x.different_signature.mykey.sub(" "," \\") : x.piece.key_signature.sub(" "," \\")}
  \\numericTimeSignature
  \\time #{x.different_signature.try(:mytime) ? x.different_signature.mytime : x.piece.time_signature}
  %\\global
  % En avant la musique.
  #{x.passagetype.try(:content) ? x.passagetype.content : "a b c d e f g" }
}"}.join("\n")}

\\book {
  \\paper {
    print-all-headers = ##t
  }

  #{self.passages.map.with_index {|y,i|"

\\markup \\wordwrap-string { \"#{y.description.tr("\n"," ").gsub(/[^A-Za-z ]/i, '').strip}\"}
\\score {
\\header {
  title=\"\"
  subtitle = \"#{y.title}\"
}

    

  \\new Staff \\with {
    instrumentName = \"Violon\"
    midiInstrument = \"violin\"
  } \\#{y.title.parameterize.gsub('-','').tr("0-9", "")}#{("a".."zz").to_a[i]}

}"}.join("\n")}
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
p "(cd #{wow} && ly highlight hello#{hi}.ly > hello#{hi}.html)"

end

end
