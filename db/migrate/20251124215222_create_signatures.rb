class CreateSignatures < ActiveRecord::Migration[8.0]
  def change
    create_table :signatures do |t|
      t.string :name
      t.integer :passage_id
      t.string :mykey
      t.string :mytime

      t.timestamps
    end
  end
end
