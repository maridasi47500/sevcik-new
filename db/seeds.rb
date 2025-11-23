# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
score=Piece.create(name: "le streghe")
passage=score.passages.create(title: "passage", beginbar: "1", endbar: "16", description:" 1st variation with 16 bowing styles")
passage=score.passages.create(title: "passage", beginbar: "17", endbar: "18", description:" by pressing the middle string with the bow harder on the middle string near the bridge the strings sound simultaneously")
passage=score.passages.create(title: "II variation", beginbar: "", endbar: "", description:" at the pizzicato pass the finger")
