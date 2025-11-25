class Passagetype < ApplicationRecord
has_many :passages
after_create :hey
after_update :hey
def hey
wow="./public/uploads/"
hi=self.title.parameterize
p wow+hi
@score="

<lilypond fragment staffsize=26>
  \\key c \\major
  \\numericTimeSignature
  \\time 4/4
  #{self.content}
</lilypond>
"

File.write(wow+"mytype"+hi+".html", @score)
@hey=`(cd #{wow} && lilypond-book mytype#{hi}.html -f html --output #{hi})`

end
end
