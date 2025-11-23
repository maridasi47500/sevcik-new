class CreatePassages < ActiveRecord::Migration[8.0]
  def change
    create_table :passages do |t|
      t.string :description
      t.string :title
      t.integer :piece_id
      t.string :endbar
      t.string :beginbar
      t.string :myscore

      t.timestamps
    end
  end
end
