
require 'rtesseract'


class Passage < ApplicationRecord
belongs_to :piece
def myscore=(uploaded_io)
File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  file.write(uploaded_io.read)
end
image = './public/uploads/'+uploaded_io.original_filename

begin
  text = RTesseract.new(image).to_s
# create a new instance of the RTesseract class , passing the image path as the parameter.
  puts text
rescue => e
  puts "Error : #{e.message}"
end
write_attribute(:description, text)
write_attribute(:myscore, uploaded_io.original_filename)
end
def myscore
read_attribute(:myscore)
end

end
