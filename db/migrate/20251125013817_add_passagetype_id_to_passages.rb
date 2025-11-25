class AddPassagetypeIdToPassages < ActiveRecord::Migration[8.0]
  def change
    add_column :passages, :passagetype_id, :integer
  end
end
