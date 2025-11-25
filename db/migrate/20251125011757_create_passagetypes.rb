class CreatePassagetypes < ActiveRecord::Migration[8.0]
  def change
    create_table :passagetypes do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
