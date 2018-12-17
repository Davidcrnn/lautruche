class CreateTpictures < ActiveRecord::Migration[5.1]
  def change
    create_table :tpictures do |t|
      t.string :tpicture
      t.integer :table_id
      t.timestamps
    end
  end
end
